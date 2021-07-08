module RubyBot
  require_relative './greetings'
  require_relative './inspirations'
  require_relative './insults'
  require_relative './help'
  class App < SlackRubyBot::App
  end

  class Hi < SlackRubyBot::Commands::Base
    command 'hi' do |client, data, _match|
      client.say(channel: data.channel, text: HelloText.say_hello)
    end
  end

  class PassGreeting < SlackRubyBot::Commands::Base
    command 'greet' do |client, data, _match|
      greeting_quotes = %w[
        good morning user! how can i help you?
        good evening user! how can i help you
      ]
      greets = Greetings.new(greeting_quotes)
      client.say(channel: data.channel, text: greets.greet(greeting_quotes))
    end
  end

  class Screenshot < SlackRubyBot::Commands::Base
    command 'screenshot' do |client, data, match|
      url = URI(match[:expression].match(/<(.*)/)[1]) #rescue nil

      if url
        fetcher_object = Screencap::Fetcher.new(url.to_s)
        screenshot = fetcher_object.fetch width: 1700, height: 850
        imgur_client = Imgur2.new ENV['IMGUR_API']
        url = imgur_client.upload screenshot
        image_url = url['upload']['links']['original']
        client.message text: image_url, channel: data.channel
      else
        client.message text: "#{_match[:expression]}  isn't a URL", channel: data.channel
      end
    end
  end

  class Insulting < SlackRubyBot::Commands::Base
    command 'insult' do |client, data, _match|
      insults = %w[
        My battery lasts longer than your relationships.
        Im surprised at your level of stupidity.
        Life is good you should get one.
        Please don’t interupt me when Im ignoring you.
        You are known as an idiot savant minus the savant.
        I never insult any people I only tell them what they are.
        Did you forget your brain in your mothers womb? Cause I’m pretty sure you did.
        The degree of your stupidity is enough to boil water.
        Of course I talk like an idiot. How else could you understand me?
        I respect those who hate me by showing my middle finger.
        If you look up the definition of moron in the dictionary there will be a picture of you.
      ]
      insult = Insults.new(insults)
      client.say(channel: data.channel, text: insult.insult(insults))
    end
  end

  class Inspiring < SlackRubyBot::Commands::Base
    command 'inspire_me' do |client, data, _match|
      inspiration_quotes = %w[
        Experience is the name everyone gives to their mistakes.
        When to use iterative development? You should use iterative development on projects that you want to succeed.
        Code is like humor. When you have to explain it. its bad.
        Fix the cause not the symptom.
        Make it work make it right make it fast.
        Simplicity is the soul of efficiency.
        Sometimes it pays to stay in bed on Monday rather than spending the rest of the week debugging Monday code.
        Write it. Shoot it. Publish it. Crochet it saute it, whatever. MAKE.
      ]
      inspiree = Inspiration.new(inspiration_quotes)
      client.say(channel: data.channel, text: inspiree.inspire(inspiration_quotes))
    end
  end
end
