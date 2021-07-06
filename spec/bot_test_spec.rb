require_relative '../lib/greetings.rb'
require_relative '../lib/inspirations.rb'
require_relative '../lib/insults.rb'

describe 'insults' do

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
arr = []
  it 'it returns true if  a random string if  called in the method' do
    arr << insults.shuffle.first
    expect(arr.all?(String)).to eq(true)
  end

  it 'it returns false upon check  for an integer' do
    arr << insults.shuffle.first
    expect(arr.all?(Integer)).to eq(false)
  end
end

describe '#self.inspire' do
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

  arr = []

  it 'it returns true if  a random string if  called in the method' do
    arr << inspiration_quotes.shuffle.first
    expect(arr.all?(String)).to eq(true)
  end

  it 'it returns false upon check  for an integer' do
    arr << inspiration_quotes.shuffle.first
    expect(arr.all?(Integer)).to eq(false)
  end

  it 'it returns false upon check  for an float' do
    arr << inspiration_quotes.shuffle.first
    expect(arr.all?(Float)).to eq(false)
  end
end