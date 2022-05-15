defmodule Finiamchallenge.Repo.Migrations.CreateStockTickersTable do
  use Ecto.Migration

  def change do
    create table(:tickers, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :symbol, :string
      add :open, :string
      add :high, :string
      add :low, :string
      add :price, :string
      add :volume, :string
      add :latest_trading_day, :string
      add :previous_close, :string
      add :change, :string
      add :change_percent, :string
      timestamps()
    end
  end
end
