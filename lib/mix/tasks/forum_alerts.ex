defmodule Mix.Tasks.ForumAlerts do
  use Mix.Task

  alias ForumAlerts.{Parser,Notifier}

  @shortdoc "Trigger alerts for matching items"

  def run(search_items) do
    Application.ensure_all_started(:forum_alerts)

    html = File.read!("test/support/fixtures/page.html")

    search_items
    |> Enum.map(&(Parser.find_results(html, &1)))
    |> List.flatten
    |> Enum.each(&Notifier.notify/1)
  end
end
