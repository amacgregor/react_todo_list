defmodule ReactTodoList.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :description, :text
      add :completed, :boolean, default: false, null: false

      timestamps()
    end
  end
end
