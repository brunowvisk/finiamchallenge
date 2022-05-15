defmodule FiniamchallengeWeb.AvTickersController do
  use FiniamchallengeWeb, :controller

  action_fallback FiniamchallengeWeb.FallbackController

  def show(conn, %{"symbol" => symbol}) do
    symbol
    |> Finiamchallenge.fetch_ticker()
    |> handle_response(conn)
  end

  defp handle_response({:ok, ticker}, conn) do
    conn
    |> put_status(:ok)
    |> json(ticker)
  end

  defp handle_response({:error, _reason} = error, _conn), do: error
end
