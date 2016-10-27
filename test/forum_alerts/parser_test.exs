defmodule ForumAlertsTest do
  use ExUnit.Case

  alias ForumAlerts.Parser

  test "parse" do
    html = File.read!("test/support/fixtures/page.html")

    assert expected_items == Parser.parse(html)
  end

  defp expected_items do
    [
      "FS: Nikon 85mm 1.4G, Edelkrone SliderPlus Pro Medium, Edelkron...",
      "FT: Nikon 85mm f1.4G for Zeiss 85mm Milvus ZF.2 maybe 135 ZF.2",
      "FS: Price drop Nikon 85  1.4G ($1030) , Sigma 150 2.8 macro",
    ]
  end
end
