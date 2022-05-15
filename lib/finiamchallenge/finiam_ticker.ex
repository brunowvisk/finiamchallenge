defmodule Finiamchallenge.FiniamTicker do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, Ecto.UUID, autogenerate: true}

  schema "tickers" do
    field :symbol, :string
    field :open, :string
    field :high, :string
    field :low, :string
    field :price, :string
    field :volume, :string
    field :latest_trading_day, :string
    field :previous_close, :string
    field :change, :string
    field :change_percent, :string
    timestamps()
  end

  @required_fields [
    :symbol,
    :open,
    :high,
    :low,
    :price,
    :volume,
    :latest_trading_day,
    :previous_close,
    :change,
    :change_percent
  ]

  def build(params) do
    params
    |> changeset()
    |> apply_action(:insert)
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @required_fields)
    |> validate_required(@required_fields)
    |> validate_length(:symbol,
      min: 1,
      max: 4,
      message: "Symbol must have between 1 and 4 characters!"
    )
  end
end
