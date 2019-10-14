defmodule Elixirsandbox.Things.Thing do
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
    |> validate_required([:name, :content])
    |> validate_length(:name, max: 40)
    |> validate_length(:content, max: 40)
  end
end
