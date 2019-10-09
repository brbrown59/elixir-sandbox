defmodule ElixirsandboxWeb.Router do
  use ElixirsandboxWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(Phoenix.LiveView.Flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", ElixirsandboxWeb do
    pipe_through(:browser)

    get("/", PageController, :index)

    get("/create", CreateController, :show)

    get("/display", DisplayController, :show)
  end

  # Other scopes may use custom stacks.
  # scope "/api", ElixirsandboxWeb do
  #   pipe_through :api
  # end
end
