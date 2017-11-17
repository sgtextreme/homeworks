class LRUCache
  def initialize(size)
    @array = []
    @size = size
  end

  def count
    # returns number of elements currently in cache
    @array.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @array include?(el)
      @array.delete(el)
    end
    @array << el 
    if @array.length > @size
      @array.shift
  end

  def show
    # shows the items in the cache, with the LRU item first
    @array
  end

  private
  # helper methods go here!

end