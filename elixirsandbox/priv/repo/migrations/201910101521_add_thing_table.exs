defmodule Elixirsandbox.Migrations.AddThingTable do
  use Ecto.Migration

  def up do
    create table("thing") do
      add(:name, :string, size: 40)
      add(:content, :string, size: 40)
    end
  end

  def down do
    drop(table("thing"))
  end
end
