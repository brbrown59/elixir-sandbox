defmodule ElixirsandboxWeb.Components.FormLive do
  use Phoenix.LiveView
  use Phoenix.HTML

  alias ElixirsandboxWeb.FormView
  alias Elixirsandbox.Things.Thing
  alias Elixirsandbox.Things
  alias Ecto.Changeset

  def render(assigns) do
    FormView.render("_form.live.html", assigns)
  end

  def mount(session, socket) do
    show_form = Map.fetch!(session, :show_form)
    thing = Thing.changeset(%Thing{}, %{"name" => "", "content" => ""})

    {:ok,
     assign(socket, show_form: show_form, thing: thing, show_success: false, show_failure: false)}
  end

  def handle_event("toggle_form", %{"show" => "true"}, socket) do
    {:noreply, assign(socket, show_form: true, show_success: false)}
  end

  def handle_event("toggle_form", %{"show" => "false"}, socket) do
    {:noreply, assign(socket, :show_form, false)}
  end

  def handle_event("save", %{"thing" => %{"name" => name, "content" => content}}, socket) do
    thing = Thing.changeset(%Thing{}, %{"name" => name, "content" => content})

    case Things.create_thing(thing) do
      {:ok, response} ->
        {:noreply,
         assign(socket,
           thing: thing,
           show_form: false,
           show_success: true,
           show_failure: false,
           display_name: name
         )}

      {:error, %Changeset{} = changeset} ->
        {:noreply,
         assign(socket,
           thing: Thing.changeset(%Thing{}, %{"name" => "", "content" => ""}),
           show_form: true,
           show_failure: true
         )}
    end
  end
end
