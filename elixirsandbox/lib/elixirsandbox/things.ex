defmodule Elixirsandbox.Things do
  import Ecto.Query, warn: false
  alias Elixirsandbox.Repo
  alias Elixirsandbox.Things.Thing

  def get_all_things() do
    query =
      from(thing in Thing,
        select: thing
      )

    {:ok, Repo.all(query)}
  end

  def get_things_by_name(name) do
    query =
      from(thing in Thing,
        where: thing.name == ^name,
        select: thing
      )

    {:ok, Repo.all(query)}
  end

  def create_thing(thing) do
    Repo.insert_or_update(thing)
  end
end
