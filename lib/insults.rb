class Insults
  attr_accessor :insults

  def initialize(insults)
    @insults = insults
  end

  def insult(insults)
    arr = @insults.sample
    arr
  end
end