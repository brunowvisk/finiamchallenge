defmodule Finiamchallenge.Repo do
  use Ecto.Repo,
    otp_app: :finiamchallenge,
    adapter: Ecto.Adapters.Postgres
end
