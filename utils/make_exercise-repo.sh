#!/bin/bash

make_exercise-repo() {
    rm -rf exercise
    git -c init.defaultBranch="$DEFAULT_BRANCH" init exercise
    cd exercise || true
    git config --local user.name "git-flow-katas bot"
    git config --local user.email "git-flow-katas@example.com"
}