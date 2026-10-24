#!/bin/bash
set -euo pipefail

number_pattern='^([0-9]+([.][0-9]*)?|[.][0-9]+)$'

read_number() {
    local prompt="$1"
    local value

    printf '%s' "$prompt" >&2
    if ! IFS= read -r value; then
        printf '\nError: expected a numeric value.\n' >&2
        return 1
    fi

    if [[ ! $value =~ $number_pattern ]]; then
        printf 'Error: "%s" is not a valid non-negative number.\n' "$value" >&2
        return 1
    fi

    printf '%s' "$value"
}

principal=$(read_number 'Enter the principal amount: ')
rate=$(read_number 'Enter the annual interest rate (%): ')
time=$(read_number 'Enter the time period in years: ')

if ! LC_ALL=C awk -v principal="$principal" -v rate="$rate" -v time="$time" \
    'BEGIN { printf "Simple interest: %.2f\n", principal * rate * time / 100 }'; then
    printf 'Error: unable to calculate simple interest.\n' >&2
    exit 1
fi
