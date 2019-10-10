defmodule ElixirsandboxWeb.Schemas.Thing do
  use Ecto.Schema
  import Ecto.Changeset

  @type t :: %__MODULE__{
          name: String.t(),
          content: String.t()
        }

  schema "thing" do
    field(:name, :string)
    field(:content, :string)
  end

  def changeset(thing, attrs \\ %{}) do
    thing
    |> cast(attrs, [:name, :content])
  end
end
