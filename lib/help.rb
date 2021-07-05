
class Bot < SlackRubyBot::Bot
  help do
    title 'FunBot ruby'
    desc 'welcome to help desc, see how to use funbot'

    command :get_latest_episode do
      title 'insult'
      desc 'it returns insults words'
      long_desc 'it insults you with different words each time you enter the command insult'
    end

    command :get_latest_episode do
      title 'inspire_me'
      desc 'it returns inspiring words'
      long_desc 'it inspires you with different words each time you enter the command inspire_me'
    end

    command :get_latest_episode do
      title 'screenshot'
      desc 'it returns a scrrenshot of a url'
      long_desc 'iit raturns the screenshot of the url whenever the you enter the command'
    end

    command :get_latest_episode do
      title 'greet'
      desc 'it greets the current user'
    end
  end
end
