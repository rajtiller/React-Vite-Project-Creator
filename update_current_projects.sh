# Updates the Starter Files of the Current Projects
for dir in ../Projects/*/*/; do
    if [ -d "$dir" ]; then
        echo "Copying to: $dir"
        cp ./Starter\ Files/* "$dir"
    fi
done
# Note: This assumes all projects are within a dir within the Projects folder (ex: Riddles)