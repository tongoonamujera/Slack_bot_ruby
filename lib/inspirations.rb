class Inspiration
  attr_accessor :inspirations

  def initialize(inspirations)
    @inspirations = inspirations
  end

  def inspire(_inspirations)
    @inspirations.sample
  end
end