defmodule TwitterSchedulerTest do
  use ExUnit.Case
  doctest TwitterScheduler

  test "greets the world" do
    assert TwitterScheduler.hello() == :world
  end
end
