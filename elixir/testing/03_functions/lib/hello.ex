defmodule Hello do
  @moduledoc """
  Documentation for Hello.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Hello.hello
      :world

  """
  def hello do
    :world
  end

  require Logger

  def run_after(options) do
    _print(options, "run_after")
    :ok
  end

  def run_after_a(options) do
    _print(options, "run_after_a")
    :ok
  end

  def run_after_b(options) do
    _print(options, "run_after_b")
    :ok
  end

  def _print(options, name) do
    %{excluded: excluded, failures: failures, skipped: skipped, total: total} = options
    Logger.info "==== Function: #{name} ===="
    Logger.info "Excluded #{excluded} Failures #{failures} Skipped #{skipped} "
    Logger.info "____ Total #{total} ____"
  end

end
