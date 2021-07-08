class Inspiration
  attr_accessor :inspirations

  def initialize(inspirations)
    @inspirations = inspirations
  end

  def inspire(_inspirations)
    inspire_priv
  end

  private
  def inspire_priv
    @inspirations.sample
  end
end
