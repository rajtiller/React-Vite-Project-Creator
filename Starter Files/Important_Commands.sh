# Important Commands for Vite Projects

# How to Start a Vite Dev Server (i.e. get the localhost running)
npm install # if not already installed
npm run dev

# How to Force a Vite dev server to restart/update its dependencies
npm run dev -- --force

# How to Deploy the App
npm run build # creates the dist/ folder
 # Then upload the dist/ folder to your hosting service 
 # (e.g. Netlify, Vercel, etc.)

# How to Push Changes to a Remote Repository via CLI (terminal)
gh auth login # Authenticate with GitHub CLI
gh repo create REMOTE_REPO_NAME --public --license apache-2.0 --source=. --remote=origin --push

# How to Set Your Remote Repository & Branch (assuming remote repo already exists)
git remote set-url origin https://github.com/USERNAME/REMOTE_REPO_NAME.git # set the repo
git push -u origin branch_name # configures remote branch (branch_name is usually main or master)
 # Note: the above command is identical to "git push --set-upstream origin branch_name"

# How to Delete a Project
cd ..
rm -rf ./project_name.git # Deletes the local .git folder (deletes local)
 # To Delete Remote Repo, Go to GitHub and Delete the Repository From There