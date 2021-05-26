defmodule HelloTasks.Parameter do
  use Ecto.Schema
  import Ecto.Changeset

  @type t() :: %__MODULE__{
          name: String.t(),
          data: String.t(),
          data_type: String.t(),
          description: String.t()
        }

  schema "parameter_settings" do
    field(:name, :string)
    field(:data, :string)
    field(:data_type, :string)
    field(:description, :string)
    timestamps()
  end

  @fields [:name, :data, :data_type, :description]

  def changeset(%__MODULE__{} = parameter, params) do
    parameter
    |> cast(params, @fields)
    |> validate_required(@fields)
  end
end
