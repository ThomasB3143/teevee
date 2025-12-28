#!/usr/bin/env bash

state_file_for() {
    # Finds the state file for a given launcher
    local launcher="$1"
    echo "/tmp/telly-$launcher.state"
}

load_state() {
    # Loads the state from a file
    local file="$1"
    if [[ -f "$file" ]]; then
        source "$file"
    else
        INDEX=0
        LAST_TS=0
    fi
}

save_state() {
    # Saves a state to a file
    local file="$1"
    local index="$2"
    local ts="$3"

    printf "INDEX=%s\nLAST_TS=%s\n" "$index" "$ts" >"$file"
}

reset_state() {
    # Resets the state for a file
    local file="$1"
    rm -f "$file"
}

next_index() {
    # Cycles to the next index given a current and maximum
    local current="$1"
    local count="$2"

    (( current + 1 < count)) && echo $((current + 1)) || echo 0
}