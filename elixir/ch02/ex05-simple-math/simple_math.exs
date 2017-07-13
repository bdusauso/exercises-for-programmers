defmodule SimpleMath do

  def prompt(count), do: "What is the #{count} number ? "

  def plus(a, b),  do: "#{a} + #{b} = #{a + b}"
  def minus(a, b), do: "#{a} - #{b} = #{a - b}"
  def times(a, b), do: "#{a} * #{b} = #{a * b}"
  def div(a, b),   do: "#{a} / #{b} = #{round(a / b)}"

end

SimpleMath.prompt(:first) |> IO.write
{first, _} = IO.read(:stdio, :line) |> Integer.parse

SimpleMath.prompt(:second) |> IO.write
{second, _} = IO.read(:stdio, :line) |> Integer.parse

[
  &SimpleMath.plus/2,
  &SimpleMath.minus/2,
  &SimpleMath.times/2,
  &SimpleMath.div/2,
] |> Enum.each(fn fun -> IO.puts apply(fun,[first, second]) end)
