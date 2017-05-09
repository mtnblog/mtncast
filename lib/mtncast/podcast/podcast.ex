defmodule Mtncast.Podcast do
  import Ecto.Query
  alias Mtncast.Podcast.Episode
  alias Mtncast.Repo

  def get_latest_episode() do
    query = from e in Episode, order_by: [desc: e.inserted_at], limit: 1
    Repo.one(query)
  end

  def get_episode(id) do
    Repo.get!(Episode, id)
  end
end
