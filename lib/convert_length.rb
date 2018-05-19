UNIT = {m: 1.0, ft: 3.28, in: 39.37}

def convert_length(length, from: :m, to: :m)
  (length / UNIT[from] * UNIT[to]).round(2)
end