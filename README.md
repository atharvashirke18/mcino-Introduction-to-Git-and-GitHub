# github-final-project

## Simple Interest Calculator

A Bash command-line calculator for simple interest. Enter a principal amount,
an annual interest rate (as a percentage), and a time period in years.
It uses the formula below and prints the interest rounded to two decimal places.

## Formula

```text
Simple interest = principal * annual rate * time in years / 100
```

For example, a principal of 1,000 at 5% for 2 years earns 100.00 in simple
interest.

Enter the annual rate as a percentage (for example, enter `5` for 5%).

## Requirements

- Bash
- `awk`

Inputs must be non-negative numbers. The principal, rate, and time period can
include decimal values.

## Usage

Make the script executable if needed, then run it:

```bash
chmod +x simple-interest.sh
./simple-interest.sh
```

Enter the principal, annual rate, and time period when prompted. Decimal values
are supported.
