defmodule ElixirsandboxWeb.DisplayView do
  use ElixirsandboxWeb, :view

  def display_thing_and_name(thing) do
    ~E"""
      <div> <%=thing.name %></div>
      <div> <%=thing.content %></div>
    """
  end

  def display_thing(thing) do
    ~E"""
      <div> <%=thing.content %></div>
    """
  end
end
