#!/bin/bash

#!/bin/bash

# Create .gitignore to ignore Vim swap files
cat <<EOL > .gitignore
*.swp
*.swo
*.swl
*.swn
EOL

# Initialize Git repo if not already
if [ ! -d ".git" ]; then
  git init
fi

# Add all files except ignored ones
git add .

# Ask for commit message
read -p "Enter your commit message: " commit_msg
git commit -m "$commit_msg"

# Rename branch to main
git branch -M main

# Add remote origin if not exists
if git remote | grep origin >/dev/null; then
  echo "Remote origin already exists."
else
  read -p "Enter your GitHub repo URL: " repo_url
  git remote add origin "$repo_url"
fi

# Push to GitHub
git push -u origin main








