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

  # def get_river_copy()
  #   copy =
  # end

end
