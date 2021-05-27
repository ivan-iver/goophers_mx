defmodule HelloTasks.Repo.Migrations.AddParameter do
  use Ecto.Migration

  @comment "Stores the configuration of parameters"
  def change do
    create table(:parameter, comment: @comment) do
      add(:name, :string)
      add(:data, :string)
      add(:data_type, :string)
      add(:description, :string)

      timestamps()
    end

    create(index(:parameter, [:name]))
  end
end
