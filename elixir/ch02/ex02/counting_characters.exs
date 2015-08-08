defmodule CharCounter do
  
  def count_chars do
    ask_input
    |> create_message
    |> IO.puts
  end

  defp create_message(string) do
    ~s("#{string}" has #{count_chars(string)} characters.)
  end

  defp count_chars(string), do: String.length(string)

  defp ask_input do
    input = IO.gets("What is the input string? ") 
            |> String.strip
    cond do
      String.length(input) == 0 ->
        IO.puts("You must enter something")
        ask_input
      true -> input
    end
  end

end

CharCounter.count_chars
