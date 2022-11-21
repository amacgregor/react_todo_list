defmodule ReactTodoListWeb.Api.TaskView do
  use ReactTodoListWeb, :view
  alias ReactTodoListWeb.Api.TaskView

  def render("index.json", %{tasks: tasks}) do
    %{data: render_many(tasks, TaskView, "task.json")}
  end

  def render("show.json", %{task: task}) do
    %{data: render_one(task, TaskView, "task.json")}
  end

  def render("task.json", %{task: task}) do
    %{
      id: task.id,
      description: task.description,
      completed: task.completed
    }
  end
end
