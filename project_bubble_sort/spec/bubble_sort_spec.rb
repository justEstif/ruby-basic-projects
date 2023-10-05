require './lib/bubble_sort'

describe BubbleSort do
  it 'returns the sorted array' do
    bubble_sort = BubbleSort.new
    got = bubble_sort.sort([3, 2, 9, 6, 5])
    expected = [2, 3, 5, 6, 9]
    expect(got).to eql(expected)
  end
end
