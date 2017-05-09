defmodule Mtncast.Repo.Migrations.CreateEpisodesTable do
  use Ecto.Migration

  def change do
    create table(:episodes) do
      add :title, :string
      add :url, :string
      
      timestamps()
    end
  end
end
