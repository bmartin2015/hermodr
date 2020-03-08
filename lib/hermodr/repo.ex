defmodule Hermodr.Repo do
  use Ecto.Repo,
    otp_app: :hermodr,
    adapter: Ecto.Adapters.Postgres
end
