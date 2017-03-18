defmodule Mix.Tasks.ForumAlerts do
  use Mix.Task

  alias ForumAlerts.{Parser,Notifier}

  @shortdoc "Trigger alerts for matching items"

  def run(search_items) do
    Application.ensure_all_started(:forum_alerts)

    %HTTPoison.Response{body: html} = HTTPoison.get!("www.fredmiranda.com/forum/board/10")

    search_items
    |> Enum.map(&(Parser.find_results(html, &1)))
    |> List.flatten
    |> Enum.each(&Notifier.notify/1)

    Notifier.notify(separator())
  end

  defp separator do
    "#{String.duplicate("-", 20)}END#{String.duplicate("-", 20)}"
  end
end
