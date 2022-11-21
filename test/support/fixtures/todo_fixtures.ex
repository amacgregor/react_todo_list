defmodule ReactTodoList.TodoFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ReactTodoList.Todo` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        completed: true,
        description: "some description"
      })
      |> ReactTodoList.Todo.create_task()

    task
  end
end
