defmodule ReactTodoList.Repo do
  use Ecto.Repo,
    otp_app: :react_todo_list,
    adapter: Ecto.Adapters.Postgres
end
