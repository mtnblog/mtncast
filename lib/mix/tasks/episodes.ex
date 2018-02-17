defmodule Mix.Tasks.Episodes.Create do
  use Mix.Task
  import Mix.Ecto
  alias Mtncast.Podcast
  alias Mtncast.Repo

  def run([title, url]) do
    ensure_started(Repo, [])
    episode = Podcast.create_episode(title, url)
  end
end

defmodule Mix.Tasks.Episodes.List do
  use Mix.Task
  import Mix.Ecto
  alias Mtncast.Podcast
  alias Mtncast.Repo

  def run(_) do
    ensure_started(Repo, [])    
    for episode <- Podcast.get_episodes() do
      IO.inspect(episode)
    end
  end

end

defmodule Mix.Tasks.Episodes.Nuke do
  use Mix.Task
  import Mix.Ecto
  alias Mtncast.Podcast.Episode
  alias Mtncast.Repo

  def run(_) do
    ensure_started(Repo, [])
    Podcast.delete_episodes()
  end
end
