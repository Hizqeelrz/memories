defmodule Memories.Notes.Note do
  use Ecto.Schema
  import Ecto.Changeset

  schema "notes" do
    field :note, :string

    timestamps()
  end

  @doc false
  def changeset(note, attrs) do
    note
    |> cast(attrs, [:note])
    |> validate_required([:note])
  end
end
