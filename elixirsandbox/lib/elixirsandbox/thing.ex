defmodule Elixirsandbox.Thing do
  import Ecto.Query, warn: false
  alias Elixirsandbox.Repo

  # add "getters" here later

  def create_thing(thing) do
    Repo.insert_or_update(thing)
  end
end
