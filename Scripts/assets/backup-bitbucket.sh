#!/bin/bash

# Set Bitbucket credentials and workspace
BITBUCKET_USER=""
BITBUCKET_APP_PASSWORD=""
BITBUCKET_WORKSPACE=""

# Set backup directory
BACKUP_DIR="bitbucket_backup"
mkdir -p "${BACKUP_DIR}"

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

# Fetch all repositories
repositories=$(curl -s --user "${BITBUCKET_USER}:${BITBUCKET_APP_PASSWORD}" "https://api.bitbucket.org/2.0/repositories/${BITBUCKET_WORKSPACE}?pagelen=100" | jq -r '.values[] | .project.key + " " + .slug')

# Backup each repository
while read -r project_key repository_slug; do
    backup_repository "${project_key}" "${repository_slug}"
done <<< "${repositories}"

echo "Backup completed."