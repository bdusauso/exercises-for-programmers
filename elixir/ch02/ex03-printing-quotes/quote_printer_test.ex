ExUnit.start

defmodule QuotePrinterTest do
  use ExUnit.Case

  test "quotation() returns the quote in double quotes" do
    assert QuotePrinter.quotation("Confucius", "Foo is not bar") == ~s(Confucius says, "Foo is not bar")
  end
end
