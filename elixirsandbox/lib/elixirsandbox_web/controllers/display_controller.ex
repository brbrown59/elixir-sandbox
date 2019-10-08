defmodule ElixirsandboxWeb.DisplayController do
  use ElixirsandboxWeb, :controller

  def show(conn, _params) do
    render(conn, "display.html")
  end
end
