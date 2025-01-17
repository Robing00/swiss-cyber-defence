#!/bin/bash

# BITBUCKET_USER=""
# BITBUCKET_APP_PASSWORD=""
# BITBUCKET_WORKSPACE=""

# Set backup directory
BACKUP_DIR="bitbucket_backup"
mkdir -p "${BACKUP_DIR}"
chmod 700 "${BACKUP_DIR}"

# Function to backup a single repository
backup_repository() {
    local project_key="$1"
    local repository_slug="$2"

    echo "Backing up ${project_key}/${repository_slug}..."

    local target_dir="${BACKUP_DIR}/${project_key}/${repository_slug}"
    mkdir -p "${target_dir}"

    git -C "${target_dir}" fetch origin --prune || \
    git clone --mirror "https://${BITBUCKET_USER}:${BITBUCKET_APP_PASSWORD}@bitbucket.org/${BITBUCKET_WORKSPACE}/${repository_slug}.git" "${target_dir}"
}

# Function to fetch repositories from a page
fetch_repositories() {
    local url="$1"

    response=$(curl -s --user "${BITBUCKET_USER}:${BITBUCKET_APP_PASSWORD}" "${url}")

    # Backup each repository
    echo "${response}" | jq -r '.values[] | .project.key + " " + .slug' | while read -r project_key repository_slug; do
        backup_repository "${project_key}" "${repository_slug}"
    done

    # Fetch next page
    next_url=$(echo "${response}" | jq -r '.next // empty')
    if [[ -n "${next_url}" ]]; then
        fetch_repositories "${next_url}"
    fi
}

# Fetch all repositories
fetch_repositories "https://api.bitbucket.org/2.0/repositories/${BITBUCKET_WORKSPACE}?pagelen=100"

echo "Create Archive (tar)..."

# Get current date
current_date=$(date +"%Y-%m-%d")

# Create tar.gz file
tar -zcf "backup_git_${current_date}.tar.gz" "${BACKUP_DIR}"
chmod 700 "backup_git_${current_date}.tar.gz"
mv "backup_git_${current_date}.tar.gz" ./archive_bitbucket_backup/

# Remove BACKUP_DIR after creating tar.gz
rm -rf "${BACKUP_DIR}"

echo "Backup completed."

curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"Backup complete backup_git_${current_date}.tar.gz\"}" https://hooks.slack.com/services/xxx/xxx/xxx
