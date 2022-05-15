defmodule FiniamchallengeWeb.FiniamTickersController do
  use FiniamchallengeWeb, :controller

  action_fallback FiniamchallengeWeb.FallbackController

  def create(conn, params) do
    params
    |> Finiamchallenge.create_finiam_ticker()
    |> handle_response(conn, "create.json", :created)
  end

  defp handle_response({:ok, ticker}, conn, view, status) do
    conn
    |> put_status(status)
    |> render(view, ticker: ticker)
  end

  defp handle_response({:error, _changeset} = error, _conn, _view, _status), do: error
end
