a = 2
s = 1

riffs = [
  [47, 54, 55, 54, 47, 54, 50, 54],
  [45, 54, 55, 54, 45, 54, 50, 54],
  [47, 54, 55, 54, 47, 54, 50, 54],
[49, 52, 57, 52, 49, 52, 45, 52]]

5.times do
  for y in 0..(riffs.length - 1)
    for x in 0..(riffs[y].length - 1)
      play riffs[y][x], amp: a
      sleep s
    end
  end
end
