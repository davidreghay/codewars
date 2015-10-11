def find_the_ball position, swaps
  for i in 0...(swaps.length) do
    if swaps[i].include?(position)
      swaps[i].delete(position)
      position = swaps[i][0]
    end
  end
  position
end
