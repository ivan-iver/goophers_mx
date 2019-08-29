defmodule SampleTest do
  use ExUnit.Case

  def _print(config) do
    require Logger
    Logger.info "Configuration info: #{inspect config}"
  end

  test "test exunit.configuration/0" do
    conf = ExUnit.configuration
    _print(conf)
    Sample.prueba()
    assert Hello.hello() == :world
  end
end
