quote = IO.gets("What is the quote ? ") |> String.strip
name = IO.gets("Who said it ? ") |> String.strip

QuotePrinter.quote(name, quote) |> IO.puts
