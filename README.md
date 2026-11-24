# Stock Picker

A Ruby program that determines the most profitable days to buy and sell stocks using a list of hypothetical daily stock prices.

## Features

- Identifies the best day to buy stocks.
- Identifies the best day to sell stocks.
- Maximizes profit while ensuring buying happens before selling.
- Handles decreasing prices and other edge cases.
- Includes automated tests using Minitest.
- Provides a command-line demonstration.

## Requirements

- Ruby 4.0.10 or compatible Ruby version.

## Installation

Clone the repository:

```bash
git clone https://github.com/TechThaPlug/stock-picker.git
```

Navigate into the project:

```bash
cd stock-picker
```

## Usage

Run the demonstration:

```bash
ruby main.rb
```

Example:

```ruby
require_relative "stock_picker"

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1, 4]
```

The result means:

- Buy on day 1 at $3.
- Sell on day 4 at $15.
- Maximum profit: $12.

## Running Tests

Run the automated test suite:

```bash
ruby -Itest test/stock_picker_test.rb
```

## Project Structure

```text
stock-picker/
├── test/
│   └── stock_picker_test.rb
├── stock_picker.rb
├── main.rb
├── README.md
├── .gitignore
├── LICENSE
└── .ruby-version
```

## Algorithm

The algorithm tracks the lowest buying price seen so far and calculates potential profit for each subsequent day.

It updates the best buying and selling days whenever a higher profit is found.

**Time Complexity:** O(n)

**Space Complexity:** O(1), excluding the returned result.

## Author

Anthony W. Maina

## License

This project is licensed under the MIT License.
