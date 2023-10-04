require './lib/stock_picker'

describe StockPicker do
  it 'finds the days for maximum profit' do
    stock_picker = StockPicker.new
    got = stock_picker.find_max_profit_days([17, 3, 6, 9, 15, 8, 6, 1, 10])
    expected = [1, 4]
    expect(got).to eql(expected)
  end
end

=begin
- have to use two pointers
- both at the start
- low, high trackers
=end