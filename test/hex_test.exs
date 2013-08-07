Code.require_file "test_helper.exs", __DIR__

defmodule HexTest do
  use ExUnit.Case

  doctest Hex

  test "encodes a binary to hex" do
    assert Hex.encode("This is a test.") == "54686973206973206120746573742e"
  end

  test "decodes a binary from hex" do
    assert Hex.decode("54686973206973206120746573742e") == "This is a test."
  end

  test "encodes a list to hex" do
    assert Hex.encode('This is a test.') == '54686973206973206120746573742e'
  end

  test "decodes a list from hex" do
    assert Hex.decode('54686973206973206120746573742e') == 'This is a test.'
  end

  test "converts hex list to an integer" do
    assert Hex.to_integer('54686973206973206120746573742e') == 438270661302729020147902120434299950
  end

  test "converts hex binary to an integer" do
    assert Hex.to_integer("54686973206973206120746573742e") == 438270661302729020147902120434299950
  end
end
