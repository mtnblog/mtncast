defmodule Mtncast.Web.Router do
  use Mtncast.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Mtncast.Web do
    pipe_through :browser # Use the default browser stack

    get "/", PodcastController, :index
    get "/:id", PodcastController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", Mtncast.Web do
  #   pipe_through :api
  # end
end
