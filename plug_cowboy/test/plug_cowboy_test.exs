defmodule PlugCowboyTest do
  use ExUnit.Case
  doctest PlugCowboy

  test "greets the world" do
    assert PlugCowboy.hello() == :world
  end
end
