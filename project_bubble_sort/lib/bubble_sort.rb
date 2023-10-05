class BubbleSort
  # @param [Array<Integer>] list
  # @return [Array<Integer>]
  def sort(list)
    sorted = false

    until sorted == true
      sorted = true
      (0..list.length - 2).each do |i|
        next unless list[i] > list[i + 1]

        sorted = false
        swap(list, i, i + 1)
      end
    end
    list
  end

  private

  def swap(list, i, j)
    tmp = list[i]
    list[i] = list[j]
    list[j] = tmp
  end
end
