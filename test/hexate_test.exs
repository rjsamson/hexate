Code.require_file "test_helper.exs", __DIR__

defmodule HexateTest do
  use ExUnit.Case

  doctest Hexate

  test "encodes an integer to hex string with padding" do
    assert Hexate.encode(15, 4) == "000f"
  end

  test "encodes a binary to a hex binary" do
    assert Hexate.encode("This is a test.") == "54686973206973206120746573742e"
  end

  test "encodes a list to a hex binary" do
    assert Hexate.encode('This is a test.') == "54686973206973206120746573742e"
  end

  test "decodes to a binary from a hex binary" do
    assert Hexate.decode("54686973206973206120746573742e") == "This is a test."
  end

  test "decodes to a binary from a hex list" do
    assert Hexate.decode('54686973206973206120746573742e') == "This is a test."
  end

  test "encodes a list to a hex list" do
    assert Hexate.encode_to_list('This is a test.') == '54686973206973206120746573742e'
  end

  test "encodes a binary to a hex list" do
    assert Hexate.encode_to_list("This is a test.") == '54686973206973206120746573742e'
  end

  test "decodes to a list from a hex list" do
    assert Hexate.decode_to_list('54686973206973206120746573742e') == 'This is a test.'
  end

 test "decodes to a list from a hex binary" do
    assert Hexate.decode_to_list("54686973206973206120746573742e") == 'This is a test.'
  end

  test "converts hex list to an integer" do
    assert Hexate.to_integer('54686973206973206120746573742e') == 438270661302729020147902120434299950
  end

  test "converts hex binary to an integer" do
    assert Hexate.to_integer("54686973206973206120746573742e") == 438270661302729020147902120434299950
  end

  test "converts an integer to a hex binary" do
    assert Hexate.encode(123456) == "1e240"
  end

  test "converts an integer to a hex list" do
    assert Hexate.encode_to_list(123456) == '1e240'
  end
end
