defmodule ForumAlerts.Parser do
  def find_results(html, query) do
    html
    |> Floki.find("tr a.topictitle")
    |> Enum.filter(&(match_element(&1, query)))
    |> Enum.map(&generate_message/1)
  end

  defp match_element(element, query) do
    element
    |> Floki.text
    |> String.match?(~r/#{query}/i)
  end

  defp generate_message(element) do
    text = Floki.text(element)
    href = Floki.attribute(element, "href") |> List.first

    text <> " - " <> "http://www.fredmiranda.com" <> href
  end
end
