# your code goese here
def old_roman_numeral(an_integer)
  raise 'The Roman only worked in integers!' unless an_integer.is_a? Integer

  m_count = an_integer / 1000
  d_count = (an_integer % 1000) / 500
  c_count = (an_integer % 500) / 100
  l_count = (an_integer % 100) / 50
  x_count = (an_integer % 50) / 10
  v_count = (an_integer % 10) / 5
  i_count = an_integer % 5

  ('M' * m_count) + ('D' * d_count) + ('C' * c_count) + ('L' * l_count) + ('X' * x_count) + ('V' * v_count) + ('I' * i_count)
end

# your code goese here for the new-style version
def roman_numeral(an_integer)
  raise 'The Roman only worked in integers!' unless an_integer.is_a? Integer

  thousands = an_integer / 1000
  hundreds = (an_integer % 1000) / 100
  tens = (an_integer % 100) / 10
  units = an_integer % 10

  roman = 'M' * thousands
  
  roman +=
    if hundreds == 9
      'CM'
    elsif Array(5..8).include? hundreds
      'D' + ('C' * (hundreds - 5))
    elsif hundreds == 4
      'CD'
    elsif hundreds >= 1
      'C' * hundreds
    else
      ''
    end

  roman +=
    if tens == 9
      'XC'
    elsif Array(5..8).include? tens
      'L' + ('X' * (tens - 5))
    elsif tens == 4
      'XL'
    elsif tens >= 1
      'X' * tens
    else
      ''
    end

  roman +=
    if units == 9
      'IX'
    elsif Array(5..8).include? units
      'V' + ('I' * (units - 5))
    elsif units == 4
      'IV'
    elsif units >= 1
      'I' * units
    else
      ''
    end

  roman
end

# Write a nice testing script herebelow !
puts "\nMy old roman numeral tests"
puts old_roman_numeral(6) == 'VI'
puts old_roman_numeral(8) == 'VIII'
puts old_roman_numeral(9) == 'VIIII'
puts old_roman_numeral(21) == 'XXI'
puts old_roman_numeral(25) == 'XXV'
puts old_roman_numeral(80) == 'LXXX'
puts old_roman_numeral(1979) == 'MDCCCCLXXVIIII'
puts old_roman_numeral(1979) == 'MDCCCCLXXVIIII'
puts old_roman_numeral(1999) == 'MDCCCCLXXXXVIIII'
puts old_roman_numeral(5005) == 'MMMMMV'
puts old_roman_numeral(2918) == 'MMDCCCCXVIII'
puts old_roman_numeral(785) == 'DCCLXXXV'

puts "\nMy new roman numeral tests"
puts roman_numeral(6) == 'VI'
puts roman_numeral(8) == 'VIII'
puts roman_numeral(9) == 'IX'
puts roman_numeral(21) == 'XXI'
puts roman_numeral(25) == 'XXV'
puts roman_numeral(80) == 'LXXX'
puts roman_numeral(1979) == 'MCMLXXIX'
puts roman_numeral(1999) == 'MCMXCIX'
puts roman_numeral(5005) == 'MMMMMV'
puts roman_numeral(2918) == 'MMCMXVIII'
puts roman_numeral(785) == 'DCCLXXXV'
