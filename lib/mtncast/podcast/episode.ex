defmodule Mtncast.Podcast.Episode do
  use Ecto.Schema

  schema "episodes" do
    field :title, :string
    field :url, :string

    timestamps()
  end
end
