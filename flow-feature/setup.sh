#!/bin/bash

source ../utils/utils.sh

git-flow-installer

make_exercise-repo

init-git-flow
git switch develop

cat <<EOF > bird.txt
      ,_
     (o )>
     //\\  
    / _ \\
EOF

git add bird.txt
git commit -m "chore: Add a bird"

cat <<EOF > cat.txt
     /\_/\  
    ( o.o ) 
     > ^ <
EOF

git add cat.txt
git commit -m "chore: Add a cat"

cat <<EOF > dog.txt
     / \__/\  
    (  •ᴥ•  )  
     (  --  ) 
EOF

git add dog.txt
git commit -m "chore: Add a dog"

git switch main

cd ..