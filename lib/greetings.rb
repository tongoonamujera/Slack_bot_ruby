class HelloText
  def self.say_hello
    'Hie this is a bot built by Tongoona Mujera'
  end
end

class Greetings
  attr_accessor :greeting

  def initialize(greeting)
    @greeting = greeting
  end

  def greet(_greeting)
    greet_help
  end

  private

  def greet_help
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
