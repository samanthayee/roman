NUMERALS = {
  "I" => 1,
  "IV" => 4,
  "V" => 5,
  "IX" => 9,
  "X" => 10,
  "XL" => 40,
  "L" => 50,
  "XC" => 90,
  "C" => 100,
  "CD" => 400,
  "D" => 500,
  "CM" => 900,
  "M" => 1000
}
def to_roman(n)
  NUMERALS.map do |ltr, val| 
    amt, n = n.divmod(val)
    ltr * amt
  end.join
end
# Drive code... this should print out trues.
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
 
# TODO: what other cases could you add to ensure your to_roman method is working?