defmodule Finiamchallenge do
  @moduledoc """
  Finiamchallenge keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  alias Finiamchallenge.AvTicker
  alias Finiamchallenge.FTicker

  defdelegate fetch_ticker(params), to: AvTicker.Get, as: :call
  defdelegate create_finiam_ticker(params), to: FTicker.Create, as: :call
end
