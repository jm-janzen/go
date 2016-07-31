#!/usr/bin/env bash

function delete {
    cd $GOBIN
    for i in $(\ls); do
       \rm $i
    done;
    printf "Directory cleaned - have a nice day :)\n"
}
function quit {
    exit $1
}

if [[ -z $GOBIN ]]; then
    echo "Environment Variable \`GOBIN' not set - run \`source ./export-go-paths.sh' to initialize them"
    quit 1
else
    printf "This will delete the following files in \`%s'\n\n" ${GOBIN}
    printf "%s\n" $(\ls ${GOBIN}*)
    printf "\nAre you sure you want to delete these files [yN] ? "
    read answer
    case $answer in
        y|Y)
            delete ;;
        n|N|*)
            quit 0 ;;
    esac
fi

quit 0
