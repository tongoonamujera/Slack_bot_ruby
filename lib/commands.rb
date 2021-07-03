module RubyBot
  require_relative './class_methods.rb'
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
      client.say(channel: data.channel, text: Insults.insult)
    end

  end

  class WolframSearch < SlackRubyBot::Commands::Base

    command 'wolf' do |client, data, _match|

      q = _match[:expression]
      result = Wolfram::Query.new(q).fetch
      hash = Wolfram::HashPresenter.new(result).to_hash

      result = ""

      hash.fetch(:pods, {}).each do |key, values|
        next if values.join("") == ""
        result << "\n" + key + "\n"
        result << values.join("\n")
      end

      if result != ""
        client.message text: result, channel: data.channel
      else
        client.message text: "
          No results found for #{q}. \n
          Try https://duckduckgo.com/?q=#{URI.escape(q)}+!google",
          channel: data.channel
      end

    end
  end
end
