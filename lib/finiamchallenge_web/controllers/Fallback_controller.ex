defmodule FiniamchallengeWeb.FallbackController do
  use FiniamchallengeWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(FiniamchallengeWeb.ErrorView)
    |> render("bad_request.json", result: result)
  end
end
