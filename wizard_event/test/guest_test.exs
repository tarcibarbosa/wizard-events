defmodule GuestTest do
  use ExUnit.Case
  doctest Guest

  test "successfully register a new guest" do
    guest = Guest.new("Name")
    assert is_map(guest)
  end

  test "successfully register a new guest send nil name" do
    guest = Guest.new(nil)
    assert "No name" === Map.get(guest, :name)
  end

  test "successfully register a new guest send empity string" do
    guest = Guest.new("")
    assert "No name" === Map.get(guest, :name)
  end

  test "successfully register a new guest without param" do
    guest = Guest.new()
    assert "No name" === Map.get(guest, :name)
  end
end
