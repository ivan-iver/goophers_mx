defmodule AssertionsTest do
  use ExUnit.Case
  doctest Assertions

  test "greets the world" do
    assert Assertions.hello() == :world
  end
end
