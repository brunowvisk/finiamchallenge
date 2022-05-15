defmodule Finiamchallenge.AlphavantageApi.Client do
  use Tesla

  plug Tesla.Middleware.BaseUrl,
       "https://www.alphavantage.co"

  plug Tesla.Middleware.JSON

  def get_stock_ticker(symbol) do
    "/query?function=GLOBAL_QUOTE&symbol=#{symbol}&apikey=BWOIR5PDJEND9CXV"
    |> get()
    |> handle_get()
  end

  defp handle_get({:ok, %Tesla.Env{status: 200, body: body}}), do: {:ok, body}

  defp handle_get({:ok, %Tesla.Env{status: 404}}),
    do: {:error, %{message: "Stock ticker symbol not found!", status: 404}}

  defp handle_get({:error, _reason} = error), do: error
end
