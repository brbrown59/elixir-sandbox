defmodule Elixirsandbox.Repo do
  use Ecto.Repo,
    otp_app: :elixirsandbox,
    adapter: Ecto.Adapters.Postgres
end
