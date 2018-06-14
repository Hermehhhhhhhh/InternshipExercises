defmodule ChatBotTest do
  use ExUnit.Case
  doctest ChatBot

  test "greets the world" do
    assert ChatBot.hello() == :world
  end
end
