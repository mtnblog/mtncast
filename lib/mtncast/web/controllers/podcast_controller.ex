defmodule Mtncast.Web.PodcastController do
  use Mtncast.Web, :controller

  def index(conn, _params) do
  end

  def show(conn, _params) do
    render(conn, "episode_2.html", title: "Touching the Void")
  end
end
