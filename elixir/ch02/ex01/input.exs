defmodule Ex01 do
  def greet do
    IO.gets("What is your name? ")
    |> String.strip
    |> greet
  end

  defp greet(name), do: IO.puts("Hello, #{name}, nice to meet you!")
end

Ex01.greet
