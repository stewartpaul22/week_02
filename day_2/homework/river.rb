class River

  attr_accessor :name, :fish

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count()
    return @fish.count()
  end

  def add_fish(fish)
    @fish << fish
  end

  def get_fish_copy()
    copy = @fish
    return copy
  end

end
