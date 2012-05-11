module Roman
  def self.numeral(num)
    @symbols = { 1=>'I', 5=>'V', 10=>'X', 50=>'L', 100=>'C', 500=>'D', 1000=>'M' }
    @limits = [[1000, 100],[500, 100], [100, 10], [50,10], [10,1], [5,1], [1, 0]]
    return @symbols[num] if @symbols.has_key?(num)
    @limits.each do |a,b|
      return numeral(a) + numeral(num - a) if num > a
      return numeral(b) + numeral(num + b) if num >= a - b
    end
  end
end