Code.require_file "test_helper.exs", __DIR__

defmodule HexTest do
  use ExUnit.Case

  doctest Hex

  test "encodes a binary to a hex binary" do
    assert Hex.encode("This is a test.") == "54686973206973206120746573742e"
  end

  test "encodes a list to a hex binary" do
    assert Hex.encode('This is a test.') == "54686973206973206120746573742e"
  end

  test "decodes to a binary from a hex binary" do
    assert Hex.decode("54686973206973206120746573742e") == "This is a test."
  end

  test "decodes to a binary from a hex list" do
    assert Hex.decode('54686973206973206120746573742e') == "This is a test."
  end

  test "encodes a list to a hex list" do
    assert Hex.encode_to_list('This is a test.') == '54686973206973206120746573742e'
  end

  test "encodes a binary to a hex list" do
    assert Hex.encode_to_list("This is a test.") == '54686973206973206120746573742e'
  end

  test "decodes to a list from a hex list" do
    assert Hex.decode_to_list('54686973206973206120746573742e') == 'This is a test.'
  end

 test "decodes to a list from a hex binary" do
    assert Hex.decode_to_list("54686973206973206120746573742e") == 'This is a test.'
  end

  test "converts hex list to an integer" do
    assert Hex.to_integer('54686973206973206120746573742e') == 438270661302729020147902120434299950
  end

  test "converts hex binary to an integer" do
    assert Hex.to_integer("54686973206973206120746573742e") == 438270661302729020147902120434299950
  end

  test "converts an integer to a hex binary" do
    assert Hex.encode(123456) == "1e240"
  end

  test "converts an integer to a hex list" do
    assert Hex.encode_to_list(123456) == '1e240'
  end
end
