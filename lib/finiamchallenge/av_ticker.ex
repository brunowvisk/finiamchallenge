defmodule Finiamchallenge.AvTicker do
  @keys [
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

  @enforce_keys @keys

  @derive Jason.Encoder
  defstruct @keys

  def build(%{
        "Global Quote" => %{
          "01. symbol" => symbol,
          "02. open" => open,
          "03. high" => high,
          "04. low" => low,
          "05. price" => price,
          "06. volume" => volume,
          "07. latest trading day" => latest_trading_day,
          "08. previous close" => previous_close,
          "09. change" => change,
          "10. change percent" => change_percent
        }
      }) do
    %__MODULE__{
      symbol: symbol,
      open: open,
      high: high,
      low: low,
      price: price,
      volume: volume,
      latest_trading_day: latest_trading_day,
      previous_close: previous_close,
      change: change,
      change_percent: change_percent
    }
  end

  # defp parse_metadata(symbol),
  #   do: Enum.map(symbol, fn item -> item["Meta Data"]["2. Symbol"] end)

  # defp parse_timeseries(timeseries),
  #   do: Enum.map(timeseries, fn item -> item["1. open"] end)
end
