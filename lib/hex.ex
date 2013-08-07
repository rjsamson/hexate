defmodule Hex do
  @moduledoc """
  A simple module to convert to and from hex encoded strings.

  Encodes / decodes both lists and binaries.
  """

  @doc """
  Returns a Hex encoded binary String

  ## Examples

      iex> Hex.encode("This is a test.")
      "54686973206973206120746573742e"
  """
  def encode(str) when is_binary(str) do
    binary_to_hex(str)
  end

  @doc """
  Returns a Hex encoded list

  ## Examples

      iex> Hex.encode('This is a test.')
      '54686973206973206120746573742e'
  """
  def encode(str) when is_list(str) do
    list_to_hex(str)
  end

  @doc """
  Returns a decoded binary String from a hex binary String

  ## Examples

      iex> Hex.decode("54686973206973206120746573742e")
      "This is a test."
  """
  def decode(hex_str) when is_binary(hex_str) do
    binary_to_list(hex_str)
    |> hex_str_to_list
    |> list_to_binary
  end

  @doc """
  Returns a decoded binary String from a hex binary String

  ## Examples

      iex> Hex.decode('54686973206973206120746573742e')
      'This is a test.'
  """
  def decode(hex_str) when is_list(hex_str) do
    hex_str_to_list(hex_str)
  end

  defp binary_to_hex(str) do
    binary_to_list(str)
    |> list_to_hex
    |> list_to_binary
  end

  defp hex_str_to_list([]) do
    []
  end

  defp hex_str_to_list([x,y|tail]) do
    [to_int(x) * 16 + to_int(y) | hex_str_to_list(tail)]
  end

  defp list_to_hex([]) do
    []
  end

  defp list_to_hex([head|tail]) do
    to_hex_str(head) ++ list_to_hex(tail)
  end

  defp to_hex_str(n) when n < 256 do
    [to_hex(div(n, 16)), to_hex(rem(n, 16))]
  end

  defp to_hex(i) when i < 10 do
    0 + i + 48
  end

  defp to_hex(i) when i >= 10 and i < 16 do
    ?a + (i - 10)
  end

  defp to_int(c) when ?0 <= c and c <= ?9 do
    c - ?0
  end

  defp to_int(c) when ?A <= c and c <= ?F do
    c - ?A + 10
  end

  defp to_int(c) when ?a <= c and c <= ?f do
    c - ?a + 10
  end
end
