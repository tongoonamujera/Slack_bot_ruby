class HelloText

  def self.say_hello
    "Hello! This is a Bot!"
  end
end

class Greetings
  attr_accessor :greeting

  def initialize(greeting)
    @greeting = greeting
  end

  def greet(greeting)
    t = Time.new
    if t.hour.to_i == 00 && t.hour.to_i < 11
      arr = @greeting.first
      arr
    elsif t.hour.to_i >= 11 && t.hour.to_i <= 15
      'good afternoon user, how can i help you?'
    else
      arr = @greeting.last
      arr
    end
  end
end

xdv = []
greets = Greetings.new(xdv)

puts greets.greet(xdv)
