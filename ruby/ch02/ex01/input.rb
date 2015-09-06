class Hello

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def say_hello
    puts create_output
  end

  private
  
  def create_output
    "Hello, #{name}, nice to meet you!"
  end
end

print "What is your name? "
Hello.new(gets.chomp).say_hello
