class JeffsArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def new_pop
    @array.pop
  end

  def new_size
    @array.size
  end
end

jeffs_array = JeffsArray.new([1,2,3])
last_item = jeffs_array.new_pop
jeffs_array.new_size
