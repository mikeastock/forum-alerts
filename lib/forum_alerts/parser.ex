defmodule ForumAlerts.Parser do
  def parse(html) do
    link_elements = Floki.find(html, "tr a.topictitle")

    matching_elements = Enum.filter(link_elements, fn element ->
      element |> Floki.text |> String.match?(~r/85.*1.4/)
    end)

    matching_elements |> Enum.map(&Floki.text/1)
  end
end
