class BinaryChop
  def initialize(array, target)
    @array = array
    @target = target
  end

  def binary_search
    return -1 if @array.empty? || !@array.include?(@target)

    mid = @array.length / 2

    if @array[mid] == @target
      mid
    elsif @array[mid] < @target
      right = binary_search(@array[mid + 1..], @target)
      right.nil? ? nil : mid + 1 + right
    else
      binary_search(@array[0...mid], @target)
    end
  end
end
