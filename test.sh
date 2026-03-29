MY_VAR="hello world"
unused_var="I am not used"

if [ $MY_VAR == "hello world" ]; then
    echo "Variable matches!"
    for file in $(ls *.txt); do
        echo "Checking file: $file"
    done
fi

# 这里的缩进非常随意
echo "Done"
