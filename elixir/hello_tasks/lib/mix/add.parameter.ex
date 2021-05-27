defmodule Mix.Tasks.Add.Parameter do
  @moduledoc """
  Add parameter to database.

  ## Examples

  ```
  mix add.parameter -n \"parameter_name\" -d \"parameter_data\" -t \"data_type\" -s \"parameter_description\"
  ```

  ## Command line options

  * `-n`, `--name` - the name of the parameter (required)
  * `-d`, `--data` - the data of the parameter (required)
  * `-t`, `--data_type` - the type of the parameter data (default string)
  * `-s`, `--description` - the description of the parameter (default is marked as test)

  """
  use Mix.Task
  require Logger
  alias HelloTasks.Parameter

  @shortdoc "Add parameters to database"

  @default_switches %{
    name: nil,
    data: nil,
    data_type: "string",
    description: "parameter to use in tests"
  }

  def run(args) do
    args
    |> parse()
    |> evaluate_switches()
    |> create()
  end

  defp parse(args) do
    switches = [
      name: :string,
      data: :string,
      data_type: :string,
      description: :string
    ]

    aliases = [n: :name, d: :data, dt: :data_type, s: :description]
    OptionParser.parse(args, switches: switches, aliases: aliases)
  end

  def evaluate_switches({switches, args, invalid}) do
    with true <- valid?(invalid) do
      cond do
        length(switches) > 0 -> evaluate_switches(switches)
        length(args) > 0 -> evaluate_switches(args)
      end
    end
  end

  def evaluate_switches(params) do
    map_params = Enum.into(params, %{})
    Map.merge(@default_switches, map_params)
  end

  defp valid?(nil), do: true

  defp valid?(input) when is_list(input), do: input == []

  defp valid?(input), do: Logger.error(fn -> "Invalid: #{inspect(input)}" end)

  defp create(param) do
    repo = repo()

    {:ok, _} =
      %Parameter{}
      |> Parameter.changeset(param)
      |> repo.insert()
  end

  defp repo do
    {:ok, _} = Application.ensure_all_started(:hello_tasks)
    [repo] = Application.fetch_env!(:hello_tasks, :ecto_repos)
    repo
  end
end
