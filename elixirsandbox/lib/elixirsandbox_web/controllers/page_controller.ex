defmodule ElixirsandboxWeb.PageController do
  use ElixirsandboxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
