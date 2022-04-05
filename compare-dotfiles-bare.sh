#!/usr/bin/env bash

find dotfiles-bare -depth 1 | egrep -v '(setup.sh|README.md|.git)$' | while read -r line; do
    before=${line/dotfiles-bare\/./dotfiles-public\/}
    after=$line
    out=$(diff -r $before $after)
    if [ -n "$out" ]; then
        echo diff -r $before $after
        echo $out
    fi
done
