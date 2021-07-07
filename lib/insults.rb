class Insults
  attr_accessor :insults

  def initialize(insults)
    @insults = insults
  end

  def insult(_insults)
    @insults.sample
  end
end
