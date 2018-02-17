defmodule Mtncast.Web.PodcastController do
  use Mtncast.Web, :controller
  alias Mtncast.Podcast

  def index(conn, _params) do
    episode = Podcast.get_latest_episode()
    #template = "episode_#{episode.id}.html"
    template = "episode_1.html"
    
    render(conn, template, episode: episode)
  end

  def show(conn, %{"id" => id}) do
    episode = Podcast.get_episode(id)
    template = "episode_#{episode.id}.html"

    render(conn, template, episode: episode)
  end
end
