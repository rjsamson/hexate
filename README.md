# Hex
A simple module for Hex encoding / decoding in Elixir

### Usage

Encode binary:
```elixir
iex> Hex.encode("This is a test.")
     "54686973206973206120746573742e"
```

Decode binary:
```elixir
iex> Hex.decode("54686973206973206120746573742e")
     "This is a test."
```

Encode list:
```elixir
iex> Hex.encode('This is a test.')
     '54686973206973206120746573742e'
```

Decode list:
```elixir
iex> Hex.decode('54686973206973206120746573742e')
     'This is a test.'
```

Convert hex to integer:
```elixir
iex> Hex.to_integer('54686973206973206120746573742e')
438270661302729020147902120434299950

iex> Hex.to_integer("54686973206973206120746573742e")
438270661302729020147902120434299950
```
