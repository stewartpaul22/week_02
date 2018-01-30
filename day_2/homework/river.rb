class River

  attr_accessor :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count()
    return @fish.count()
  end

end
