class BusStop

  attr_reader :name, :queue

  def initialize(name)
    @name = name
    @queue = []
  end
  # +++++++++  Solution ++++++++++++++++++

  def queue_count()
    return @queue.count()
  end

  def add_person(person)
    @queue << person
  end

  def get_queue_copy()
    copy = @queue
    return copy
  end

  def clear_queue()
    @queue.clear()
  end

  # +++++++++  Solution ++++++++++++++++++
end
