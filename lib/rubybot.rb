module RubyBot
  require_relative './greetings.rb'
  require_relative './inspirations.rb'
  require_relative './insults.rb'
  require_relative './help.rb'
  require_relative './quotes.rb'
  include Quotes
  class App < SlackRubyBot::App
  end

  class Hi < SlackRubyBot::Commands::Base
    command 'hi' do |client, data, _match|
      client.say(channel: data.channel, text: HelloText.say_hello)
    end
  end

  class Pass_greeting < SlackRubyBot::Commands::Base
    command 'greet' do |client, data, _match|
      client.say(channel: data.channel, text: Greetings.greet)
    end
  end

  class Screenshot < SlackRubyBot::Commands::Base

    command 'screenshot' do |client, data, _match|
      
      url = URI(_match[:expression].match(/\<(.*)\>/)[1]) rescue nil

      if url
        fetcher_object = Screencap::Fetcher.new(url.to_s)
        screenshot = fetcher_object.fetch width: 1700, height: 850
        imgur_client = Imgur2.new ENV['IMGUR_API']
        url = imgur_client.upload screenshot
        image_url = url["upload"]["links"]["original"]
        client.message text: image_url, channel: data.channel
      else
        client.message text: _match[:expression] + " " + "isn't a URL", channel: data.channel

      end
    end
  end

  class Insulting < SlackRubyBot::Commands::Base
    command 'insult' do |client, data, _match|
      insult = Insults.new($insults)
      client.say(channel: data.channel, text: insult.insult($insults))
    end
  end

  class Inspiring < SlackRubyBot::Commands::Base
    command 'inspire_me' do |client, data, _match|
      inspiree = Inspiration.new($inspiration_quotes)
      client.say(channel: data.channel, text: inspiree.inspire($inspiration_quotes))
    end
  end
end
