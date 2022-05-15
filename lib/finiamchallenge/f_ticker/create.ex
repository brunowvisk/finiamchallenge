defmodule Finiamchallenge.FTicker.Create do
  alias Finiamchallenge.AlphavantageApi.Client
  alias Finiamchallenge.AvTicker
  alias Finiamchallenge.FiniamTicker
  alias Finiamchallenge.Repo

  def call(%{"symbol" => symbol} = params) do
    symbol
    |> Client.get_stock_ticker()
    |> handle_response(params)
  end

  defp handle_response({:ok, body}, params) do
    body
    |> AvTicker.build()
    |> create_finiam_ticker(params)
  end

  defp handle_response({:error, _msg} = error, _params), do: error

  defp create_finiam_ticker(
         %AvTicker{
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
         },
         %{}
       ) do
    params = %{
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

    params
    |> FiniamTicker.build()
    |> handle_build()
  end

  defp handle_build({:ok, ticker}), do: Repo.insert(ticker)
  defp handle_build({:error, _changeset} = error), do: error
end
