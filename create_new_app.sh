if [ -z "$1" ] || [[ "$1" =~ [A-Z] ]]; then
    echo "ERROR: Input project name has capital letters or is empty"
    exit 1
fi

npm create vite@latest ../Projects/Unassigned\ Projects/$1

# Selections: (Down, Down, Enter, Enter)
# -----------
# 1. React framwork
# 2. TypeScript

cd ../Projects/Unassigned\ Projects/$1

cp ../../../Project\ Creator/Starter\ Files/* . 
# Note: This assumes the script is run from the Project Creator directory

code . start_app.sh src/App.tsx src/main.tsx


chmod +x start_app.sh
