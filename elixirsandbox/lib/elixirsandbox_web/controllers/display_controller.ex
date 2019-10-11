defmodule ElixirsandboxWeb.DisplayController do
  use ElixirsandboxWeb, :controller
  alias Elixirsandbox.Things

  def index(conn, _params) do
    with {:ok, things} <- Things.get_all_things() do
      render(conn, "display.html", things: things)
    end
  end

  def show(conn, %{"name" => name}) do
    with {:ok, things} <- Things.get_things_by_name(name) do
      render(conn, "name.html", things: things, name: name)
    end
  end
end
