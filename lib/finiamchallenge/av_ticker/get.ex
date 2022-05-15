defmodule Finiamchallenge.AvTicker.Get do
  alias Finiamchallenge.AlphavantageApi.Client
  alias Finiamchallenge.AvTicker

  def call(symbol) do
    symbol
    |> Client.get_stock_ticker()
    |> handle_response()
  end

  defp handle_response({:ok, body}), do: {:ok, AvTicker.build(body)}
  defp handle_response({:error, _reason} = error), do: error
end
