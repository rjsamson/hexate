# Hex
A simple module for Hex encoding / decoding in Elixir

### Usage

Encode to binary:
```elixir
iex> Hex.encode("This is a test.")
     "54686973206973206120746573742e"

iex> Hex.encode('This is a test.')
     "54686973206973206120746573742e"

iex> Hex.encode(123456)
     "1e240"

iex> Hex.encode(15, 4)
     "000f"
```

Decode to binary:
```elixir
iex> Hex.decode("54686973206973206120746573742e")
     "This is a test."

iex> Hex.decode('54686973206973206120746573742e')
     "This is a test."
```

Encode to list:
```elixir
iex> Hex.encode_to_list('This is a test.')
     '54686973206973206120746573742e'

iex> Hex.encode_to_list("This is a test.")
     '54686973206973206120746573742e'

iex> Hex.encode(123456)
     '1e240'
```

Decode to list:
```elixir
iex> Hex.decode('54686973206973206120746573742e')
     'This is a test.'

iex> Hex.decode("54686973206973206120746573742e")
     'This is a test.'
```

Convert hex to integer:
```elixir
iex> Hex.to_integer('54686973206973206120746573742e')
     438270661302729020147902120434299950

iex> Hex.to_integer("54686973206973206120746573742e")
     438270661302729020147902120434299950
```
