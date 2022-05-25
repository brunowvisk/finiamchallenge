# Finiam Challenge 
Web API Rest developed using Elixir, Phoenix Framework, PostgreSQL database, Tesla HTTP Client. This API consume data from Alpha Vantage API.

## How to install

To start your Phoenix server:

  * Install dependencies with `mix deps.get`. In this application, Tesla and 
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

- Now, you can use Postman, Insomnia or another API Platform to test the application, trying the HTTP commands:
  I) (Post method) - https://localhost:4000/api/track/{insert your stock ticker here between 1 to 4 characters}
      - This method insert a new stock ticker on PostgreSQL database.
  II) (Get method) https://localhost:4000/api/status/{insert your stock ticker here between 1 to 4 characters}
      - This method returns from Alpha Vantage API, Global Quote information about specific stock ticker required.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Technologies used in the project

- [Elixir 1.13.3](https://elixir-lang.org/install.html) - Programming language
- [Phoenix 1.6.6](https://hexdocs.pm/phoenix/installation.html#elixir-1-12-or-later) - Framework
- [PostgreSQL 13](https://www.postgresql.org/download/) - Database
- [Visual Studio Code 1.65.2](https://code.visualstudio.com/download) - Integrated Development Environment (IDE)

## Contact

- Bruno Rocha - https://www.linkedin.com/in/bruno-f-rocha-6770a31a2/
- Project link - https://github.com/brunowvisk/finiamchallenge