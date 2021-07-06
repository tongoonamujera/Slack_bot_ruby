class Inspiration
  def self.inspire
    inspiration_quotes = [
      'Experience is the name everyone gives to their mistakes.',
      'When to use iterative development? You should use iterative development only on projects that you want to succeed.',
      'Code is like humor. When you have to explain it, it’s bad.',
      'Fix the cause, not the symptom.',
      'Make it work, make it right, make it fast.',
      'Simplicity is the soul of efficiency.',
      'Sometimes it pays to stay in bed on Monday, rather than spending the rest of the week debugging Monday’s code.',
      'Write it. Shoot it. Publish it. Crochet it, sauté it, whatever. MAKE.'
    ]

    arr = inspiration_quotes.shuffle.first.to_s
      arr
  end
end