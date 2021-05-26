defmodule Mix.Tasks.Hello do
  use Mix.Task

  @moduledoc """
    Outputs `Hello` every time.
  """

  @shortdoc "Say hello"

  def run(_) do
    Mix.shell().info "Hello"
  end
end
