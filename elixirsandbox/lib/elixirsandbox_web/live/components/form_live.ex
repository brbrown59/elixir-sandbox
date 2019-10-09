defmodule ElixirsandboxWeb.Components.FormLive do
  use Phoenix.LiveView
  use Phoenix.HTML

  alias ElixirsandboxWeb.FormView

  def render(_) do
    FormView.render("_form.live.html")
  end
end
