def fizz_buzz(int)
  if int % 3 != 0 && int % 5 != 0
    return int.to_s
  end

  string = ""
  if int % 3 == 0
    string += "Fizz"
  end
  if int % 5 == 0
    string += " " if string
    string += "Buzz"
  end

  return string
end

for num in 1...35 do
  puts fizz_buzz(num)
end
