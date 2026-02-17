# git
git config --global user.name "username" # Set username
git config --global user.email "you@example.com" # Set email address

git clone https://github.com//<username>/<repo>.git # Clone repository
git status # Show modified/staged files
git log --graph --full-history --all # Print graphical history of the repository

# push
git add . # Stage changes
git commit -m <string> # Commit changes
git push origin main # Merge 'local' to 'remote'

# pull
git fetch origin # Sync 
git pull origin main # Merge 'remote' into 'local'
git pull --rebase origin main

# branch
git switch <branch> # Switch branch
git switch -c <branch> # Create branch

git branch # Local branches
git branch -r # Remote branches
git branch -d <branch> -d Delete branch

git commit --amend # Update last commit
git push --force-with-lease origin branch-name # Force push

git fetch -p origin # Prune deleted branches 
git diff --cached # View changes
git restore <file> # Restore file
