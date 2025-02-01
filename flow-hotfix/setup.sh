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

git switch -c feature/rat

cat <<EOF > rat.txt
    (\(\  
    ( -.-)
    o_(")(")
EOF

git add rat.txt
git commit -m "feat: Add a rat"

git switch develop
git merge feature/rat -m "feat: Add a rat"
git branch -d feature/rat
git switch main 
git merge develop --squash
git commit -m "feat: Release the rat feature"
git tag 1.0
git switch develop
git switch -c feature/mouse

cat <<EOF > mouse.txt
     /\_/\  
    ( o.o ) 
     > ^ <
EOF

git add mouse.txt
git commit -m "feat: Add a mouse"
git switch develop
sed -i 's/1.0/1.1/' version.txt
git add version.txt
git commit -m "Bump version to 1.1"
git merge feature/mouse -m "feat: Add a mouse"
git branch -d feature/mouse
git switch main
git merge develop --squash
git commit -m "feat: Add a mouse"
git tag 1.1

cd ..