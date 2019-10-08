defmodule ElixirsandboxWeb.CreateController do
  use ElixirsandboxWeb, :controller

  def show(conn, _params) do
    render(conn, "create.html")
  end
end
