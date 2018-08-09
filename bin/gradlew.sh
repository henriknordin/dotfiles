#! /bin/bash
#
# Find up in directory hierarcy for gradlew

readonly ARGS="$@"

main() {
    CWD="$PWD"
    until [ "$CWD" == "/" ]; do
        GRADLEW="$CWD/gradlew"
        if [ -e $GRADLEW ]; then
            exec $GRADLEW $ARGS
        fi
        CWD=$(dirname $CWD)
    done

    echo "gradlew.sh: No gradlew found in parent directories"
    exit 1
}

main
