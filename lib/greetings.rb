class HelloText
  def self.say_hello
    'Hello! This is a Bot!'
  end
end

class Greetings
  attr_accessor :greeting

  def initialize(greeting)
    @greeting = greeting
  end

  def greet(_greeting)
    t = Time.new
    if t.hour.to_i >= 1 && t.hour.to_i < 11
      @greeting.first
    elsif t.hour.to_i >= 11 && t.hour.to_i <= 15
      'good afternoon user, how can i help you?'
    else
      @greeting.last
    end
  end
end
