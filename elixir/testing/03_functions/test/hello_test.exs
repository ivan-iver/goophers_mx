defmodule HelloTest do
  use ExUnit.Case
  doctest Hello

  #  setup do
    #    ExUnit.after_suite &Hello.run_after/1
    #    ExUnit.after_suite &Hello.run_after_a/1
  # end


  def run_after(options) do
    require Logger
    Logger.info "Run after #{inspect options}"
  end

  test "greets the world" do
    ExUnit.after_suite &Hello.run_after/1
    assert Hello.hello() == :world
  end
end
