defmodule ElixirsandboxWeb.Components.FormLive do
  use Phoenix.LiveView
  use Phoenix.HTML

  alias ElixirsandboxWeb.FormView

  def render(assigns) do
    FormView.render("_form.live.html", assigns)
  end

  def mount(session, socket) do
    show_form = Map.fetch!(session, :show_form)
    thing_name = Map.fetch!(session, :show_form)
    thing = Map.fetch!(session, :show_form)

    {:ok, assign(socket, show_form: show_form, thing_name: thing_name, thing: thing)}
  end

  def handle_event("toggle_form", %{"show" => "true"}, socket) do
    socket.assign(:show_form, true)
  end

  def handle_event("toggle_form", %{"show" => "false"}, socket) do
    socket.assign(:show_form, false)
  end
end
