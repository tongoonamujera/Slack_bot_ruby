require_relative '../lib/greetings'
require_relative '../lib/inspirations'
require_relative '../lib/insults'

describe '#insults' do
  array = %w[xzvs]
  insults = Insults.new(array)
  it 'has a getter and a setter' do
    expect(insults.insults).to eq(array)
  end

  it 'has a getter and a setter' do
    expect(!insults.insults).not_to eq(array)
  end

  it 'insult method return a string' do
    expect((insults.insult(array)).is_a?(String)).to eq(true)
  end

  it 'insult method return false if an argument is not a string' do
    expect(!(insults.insult(array)).is_a?(String)).to eq(false)
  end
end

describe '#inspirations' do
  array = %w[xzvs]
  inspirate = Inspiration.new(array)
  it 'has a getter and a setter' do
    expect(inspirate.inspirations).to eq(array)
  end

  it 'has a getter and a setter' do
    expect(!inspirate.inspirations).not_to eq(array)
  end

  it 'inspirations method return a string' do
    expect((inspirate.inspire(array)).is_a?(String)).to eq(true)
  end

  it 'inspirations method return false if an argument is not a string' do
    expect(!(inspirate.inspire(array)).is_a?(String)).to eq(false)
  end
end

describe '#greetings' do
  array = %w[xzvs]
  greeting = Greetings.new(array)
  it 'has a getter and a setter' do
    expect(greeting.greeting).to eq(array)
  end

  it 'has a getter and a setter' do
    expect(!greeting.greeting).not_to eq(array)
  end

  it 'greet method return a string' do
    expect((greeting.greet(greeting)).is_a?(String)).to eq(true)
  end

  it 'greet method return false if an argument is not a string' do
    expect(!(greeting.greet(greeting)).is_a?(String)).to eq(false)
  end
end
