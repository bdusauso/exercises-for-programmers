defmodule Greeter do
  def ask_and_greet do
    ask_name
    |> sanitize_input
    |> create_greet_message
    |> greet
  end

  def ask_name, do: IO.gets("What is your name? ")

  def sanitize_input(input), do: String.strip(input)

  def create_greet_message(name), do: "Hello, #{name}, nice to meet you!"

  def greet(name), do: IO.puts(name)
end

Greeter.ask_and_greet
