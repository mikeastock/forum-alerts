defmodule ForumAlerts.ParserTest do
  use ExUnit.Case

  alias ForumAlerts.Parser

  test "find_results" do
    html = File.read!("test/support/fixtures/page.html")

    assert expected_items == Parser.find_results(html, "Fuji")
  end

  defp expected_items do
    [
      "FS: Fujifilm X-A1 body - http://www.fredmiranda.com/forum/topic/1481079",
      "FS: Fuji 50-140 f2.8 lens and 1.4x teleconverter - http://www.fredmiranda.com/forum/topic/1480560",
      "FS: Fuji 23mm f/1.4 $500 - http://www.fredmiranda.com/forum/topic/1478837",
      "FS: Fuji X-T2, 16mm 1.4, 27mm 2.8, 55-200, Touit 12, All USA M... - http://www.fredmiranda.com/forum/topic/1476476",
    ]
  end
end
