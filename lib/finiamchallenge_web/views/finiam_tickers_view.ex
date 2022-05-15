defmodule FiniamchallengeWeb.FiniamTickersView do
  use FiniamchallengeWeb, :view

  alias Finiamchallenge.FiniamTicker

  def render("create.json", %{
        ticker: %FiniamTicker{
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
      }) do
    %{
      message: "Stock ticker created!",
      ticker: %{
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
    }
  end
end
