#!/bin/bash

init-git-flow() {
    git branch -m main

    cat <<EOF > version.txt
1.0
EOF

    git add version.txt
    git commit -m "chore: init"

    git branch develop

    cat <<EOF >> .git/config
[gitflow "branch"]
    master = main
    develop = develop
[gitflow "prefix"]
    feature = feature/
    release = release/
    hotfix = hotfix/
    support = support/
    versiontag =
EOF
}