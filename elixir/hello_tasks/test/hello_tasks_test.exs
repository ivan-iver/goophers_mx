defmodule HelloTasksTest do
  use ExUnit.Case
  doctest HelloTasks

  test "greets the world" do
    assert HelloTasks.hello() == :world
  end
end
