# Hexate

[![Build Status](https://travis-ci.org/rjsamson/hexate.svg?branch=master)](https://travis-ci.org/rjsamson/hexate) [![Hex.pm](https://img.shields.io/hexpm/v/hexate.svg)](https://hex.pm/packages/hexate) [![Hex.pm](https://img.shields.io/hexpm/dt/hexate.svg)]()

A simple module for hexadecimal encoding / decoding in Elixir.

## Note: name change from `hex` to `hexate`

Now that Elixir includes integration with Hex.pm, the library has been
renamed `hexate` to avoid namespace clashes.

This was manifesting itself with intermittent failures when running test
suites. If you experience this, update your deps!

If you really *must* use the old version, it's on the branch `pre-rename-to-hexate`.

## Adding to your `mix.exs`

```elixir
defp deps do
  [
    {:hexate,  ">= 0.6.0"}
  ]
end
```

## Usage

Encode to string (binary):
```elixir
# From a string
iex> Hexate.encode("This is a test.")
     "54686973206973206120746573742e"

# From a char-list
iex> Hexate.encode('This is a test.')
     "54686973206973206120746573742e"

iex> Hexate.encode(123456)
     "1e240"

iex> Hexate.encode(15, 4)
     "000f"

iex> Hexate.encode(15.0, 2)
     "0f"

iex> Hexate.encode(15.0)
     "f"
```

Decode to string (binary):
```elixir
# From a hex string
iex> Hexate.decode("54686973206973206120746573742e")
     "This is a test."

# From a hex char-list
iex> Hexate.decode('54686973206973206120746573742e')
     "This is a test."
```

Encode to hex char-list:
```elixir
# From a unicode char-list
iex> Hexate.encode_to_list('This is a test.')
     '54686973206973206120746573742e'

# From a unicode string
iex> Hexate.encode_to_list("This is a test.")
     '54686973206973206120746573742e'

# From an integer
iex> Hexate.encode_to_list(123456)
     '1e240'
```

Decode to unicode char-list:
```elixir
# From a hex char-list
iex> Hexate.decode_to_list('54686973206973206120746573742e')
     'This is a test.'

# From a hex string
iex> Hexate.decode_to_list("54686973206973206120746573742e")
     'This is a test.'
```

Convert hex to integer:
```elixir
# From hex char-list
iex> Hexate.to_integer('54686973206973206120746573742e')
     438270661302729020147902120434299950

# From hex string
iex> Hexate.to_integer("54686973206973206120746573742e")
     438270661302729020147902120434299950
```

## Contributing

* Fork this repo
* Make a feature branch
* Issue a pull request

## Running tests

```bash
mix deps.get
mix test.watch
```

## Authors

[Robert J Samson](https://github.com/rjsamson)
[David Parry](https://github.com/suranyami)
