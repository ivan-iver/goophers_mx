defmodule Mix.Tasks.Hello do
  use Mix.Task

  @moduledoc """
    Outputs `Hello` every time.
  """

  @shortdoc "Say hello meetup"

  def run(_) do
    Mix.shell().info("Hello")
  end
end
