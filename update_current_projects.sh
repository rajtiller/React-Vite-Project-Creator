# Updates the Starter Files of the Current Projects

original_dir=$(pwd)

new_dir=$(dirname "$0") # Make sure we're working with the correct directory

cd "$new_dir"

for dir in ../Projects/*/*/; do
    if [ -d "$dir" ]; then
        echo "Copying to: $dir"
        cp ./Starter\ Files/* "$dir"
    fi
done

cd "$original_dir" # Return to the original directory