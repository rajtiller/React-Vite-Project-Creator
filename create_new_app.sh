if [ -z "$1" ] || [[ "$1" =~ [A-Z] ]]; then
    echo "ERROR: Input project name has capital letters or is empty"
    exit 1
fi

original_dir=$(pwd)

dir_path=$(dirname "$0") # Make sure we're working with 

cd "$dir_path"
echo -e "Current Dir: $dir_path\n"

if [ ! -d "../Projects" ]; then
    mkdir ../Projects
fi
if [ ! -d "../Projects/Unassigned Projects" ]; then
    mkdir "../Projects/Unassigned Projects"
fi # Make dirs if they don't exist already

npm create vite@latest ../Projects/Unassigned\ Projects/$1

# Selections: (Down, Down, Enter, Enter)
# -----------
# 1. React framwork
# 2. TypeScript

current_dir=$(pwd)

cd ../Projects/Unassigned\ Projects/$1

cp "$current_dir/Starter Files"/* . 

code . z_start_app.sh src/App.tsx src/main.tsx

chmod +x z_start_app.sh

cd $original_dir # Return to the original directory

echo -e "Ignore the three commands above, just use the newly created IDE window"