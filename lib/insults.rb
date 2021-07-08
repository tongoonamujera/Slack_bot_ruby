class Insults
  attr_accessor :insults

  def initialize(insults)
    @insults = insults
  end

  def insult(_insults)
    insult_priv
  end

  private

  def insult_priv
    @insults.sample
  end
end
