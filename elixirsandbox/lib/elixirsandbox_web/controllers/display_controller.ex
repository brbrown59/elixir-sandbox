defmodule ElixirsandboxWeb.DisplayController do
  use ElixirsandboxWeb, :controller
  alias Elixirsandbox.Things

  def show(conn, _params) do
    with {:ok, things} <- Things.get_all_things() do
      render(conn, "display.html", things: things)
    end
  end
end
