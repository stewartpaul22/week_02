class Bear

  attr_accessor :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def stomach_count()
    return @stomach.count()
  end

  def eat(fish)
    @stomach << fish
  end

  def take_fish_from_river(river)
    #@stomach << river.fish[0]
    eat(river.fish[0])
    river.fish.delete_at(0)
  end

  def roar()
    return "Grrahh!"
  end

end
