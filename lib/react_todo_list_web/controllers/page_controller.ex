defmodule ReactTodoListWeb.PageController do
  use ReactTodoListWeb, :controller
  alias ReactTodoList.Todo

  def index(conn, _params) do
    tasks = Todo.list_tasks()
    render(conn, "index.html", props: Poison.encode!(%{tasks: tasks}))
  end
end
