ExUnit.start

defmodule QuotePrinterTest do
  use ExUnit.Case

  test "quote() returns the quote in double quotes" do
    assert QuotePrinter.quote("Confucius", "Foo is not bar") == ~s(Confucius says, "Foo is not bar")
  end
end
