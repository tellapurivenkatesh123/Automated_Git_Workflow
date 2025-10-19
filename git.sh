#!/bin/bash
echo "============================"
echo "🚀 Automated Git Workflow"
echo "============================"
echo -e "press ['f'] to commit files or ['ENTER'] to continue:\c"
read input
if [[ $input == "f" ]];then
    echo -e "Enter the files to commit:\c"
    read -a files 
    for f in ${files[@]};do
        if [ ! -f $f ];then 
        echo "⚠️  File '$f' does not exist in the current directory."
        echo "Exit  code -1"
        exit 1
        else
            continue
        fi
    done

    echo "Adding files $files"
    add=$(git add ${files[@]})
else
    echo "Adding all files"
    add=$(git add .)
fi
read -p "enter the commit mesage:"
commit=$(git commit -m "$REPLY")
echo "pushing files to remote repo"
push=$(git push -u origin main)
echo "$push"
echo "✅ Successfully completed!"
