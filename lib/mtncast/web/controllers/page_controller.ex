defmodule Mtncast.Web.PageController do
  use Mtncast.Web, :controller

  def index(conn, _params) do
    render conn, "index.html", title: "Coming Soon"
  end
end
