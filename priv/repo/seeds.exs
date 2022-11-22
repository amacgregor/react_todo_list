# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ReactTodoList.Repo.insert!(%ReactTodoList.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


alias ReactTodoList.Repo
alias ReactTodoList.Todo.Task

Repo.insert!(%Task{
  id: 1,
  description: "Learn Elixir",
  completed: false
})

Repo.insert!(%Task{
  id: 2,
  description: "Build a Todo App",
  completed: false
})
