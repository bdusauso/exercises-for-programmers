defmodule MadLib do
  def sentence(noun, verb, adjective, adverb) do
    "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
  end
end

ExUnit.start

defmodule MadLibTest do
  use ExUnit.Case
  
  test "the sentence is well formed" do
    assert MadLib.sentence("dog", "walk", "blue", "quickly") == "Do you walk your blue dog quickly? That's hilarious!"
  end
end
