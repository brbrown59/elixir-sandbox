defmodule ElixirsandboxWeb.CreateController do
  use ElixirsandboxWeb, :controller
  import Phoenix.LiveView.Controller

  def show(conn, _params) do
    live_render(conn, ElixirsandboxWeb.Components.FormLive, session: %{show_form: false})
  end
end
