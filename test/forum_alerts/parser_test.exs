defmodule ForumAlerts.ParserTest do
  use ExUnit.Case

  alias ForumAlerts.Parser

  test "find_results" do
    html = File.read!("test/support/fixtures/page.html")

    assert expected_items == Parser.find_results(html, "85.*1.4")
  end

  defp expected_items do
    [
      "FS: Nikon 85mm 1.4G, Edelkrone SliderPlus Pro Medium, Edelkron... - http://www.fredmiranda.com/forum/topic/1455171",
      "FT: Nikon 85mm f1.4G for Zeiss 85mm Milvus ZF.2 maybe 135 ZF.2 - http://www.fredmiranda.com/forum/topic/1457416",
      "FS: Sigma 85mm 1.4 for Nikon - http://www.fredmiranda.com/forum/topic/1457160",
      "FS: Price drop Nikon 85  1.4G ($1030) , Sigma 150 2.8 macro - http://www.fredmiranda.com/forum/topic/1449221",
    ]
  end
end
