# ForumAlerts

[![CircleCI](https://circleci.com/gh/mikeastock/forum-alerts.svg?style=svg&circle-token=9074eb710b278f686849eb1c2c9c5d9ba1d0cce5)](https://circleci.com/gh/mikeastock/forum-alerts)

Simple mix task that parses FredMiranda forums for items on sale

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `forum_alerts` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:forum_alerts, "~> 0.1.0"}]
    end
    ```

  2. Ensure `forum_alerts` is started before your application:

    ```elixir
    def application do
      [applications: [:forum_alerts]]
    end
    ```

