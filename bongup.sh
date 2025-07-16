#!/bin/bash 
clear 

# Commands
check_branch_remote() {
    git remote -vv 
    git branch -vv
}

push_up_main() {
    echo "# xo-bong-1" >> README.md
    git init
    git add .
    git commit -m "first commit"
    git branch -M main
    git remote add origin git@github.com:xo1xzy/xo-bong-1.git
    git push -u origin main
}

normal_push() {
    git add .
    git commit -m "update"
    git push
}

# Execute 
normal_push
check_branch_remote