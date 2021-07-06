class Inspiration
  attr_accessor :inspirations

  def initialize(inspirations)
    @inspirations = inspirations
  end

  def inspire(inspirations)
    arr = @inspirations.sample
    arr
  end
end