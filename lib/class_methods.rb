class HelloText
  def self.say_hello
    'Hello! This is a Bot!'
  end
end

class Greetings
  def self.greet
    'hello user, how can i help you toady, I\'m you daily friend!'
  end
end
class Insults
  def self.insult
    insults = [
      'My battery lasts longer than your relationships.',
      'I’m surprised at your level of stupidity.',
      'Life is good, you should get one.',
      'Please don’t interupt me when I’m ignoring you.',
      'You are known as an idiot savant, minus the savant.',
      'I never insult any people I only tell them what they are.',
      'Did you forget your brain in your mother’s womb? Cause I’m pretty sure you did.',
      'The degree of your stupidity is enough to boil water.',
      'Of course I talk like an idiot. How else could you understand me?',
      'I respect those, who hate me by showing my middle finger.',
      'If you look up the definition of moron in the dictionary there will be a picture of you.'
    ]

    arr = insults.shuffle.first.to_s
    return arr
  end
end