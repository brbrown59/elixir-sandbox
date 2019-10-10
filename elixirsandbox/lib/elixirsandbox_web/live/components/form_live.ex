defmodule ElixirsandboxWeb.Components.FormLive do
  use Phoenix.LiveView
  use Phoenix.HTML

  alias ElixirsandboxWeb.FormView
  alias ElixirsandboxWeb.Schemas.Thing, as: Schema
  alias Elixirsandbox.Thing

  def render(assigns) do
    FormView.render("_form.live.html", assigns)
  end

  def mount(session, socket) do
    show_form = Map.fetch!(session, :show_form)
    thing = Schema.changeset(%Schema{}, %{"name" => "", "content" => ""})
    {:ok, assign(socket, show_form: show_form, thing: thing)}
  end

  def handle_event("toggle_form", %{"show" => "true"}, socket) do
    {:noreply, assign(socket, :show_form, true)}
  end

  def handle_event("toggle_form", %{"show" => "false"}, socket) do
    {:noreply, assign(socket, :show_form, false)}
  end

  def handle_event("save", %{"thing" => %{"name" => name, "content" => content}}, socket) do
    thing = Schema.changeset(%Schema{}, %{"name" => name, "content" => content})
    Thing.create_thing(thing)
    {:noreply, assign(socket, :thing, thing)}
  end
end
