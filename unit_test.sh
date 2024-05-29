#!/bin/bash

cd ./build/test/

for test_file in test_*; do
    if [[ -x "$test_file" ]]; then
        echo "Running $test_file ..."
        ./"$test_file" --minloglevel=2
    fi
done

echo "All test done."

