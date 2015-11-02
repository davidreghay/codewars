NUMS = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100,
          'D' => 500, 'M' => 1000 }

def solution(roman)
  sum = 0
  roman.chars.each_with_index do |x, i|
    if i < roman.length - 1 and NUMS[roman[i+1]] > NUMS[x]
      sum -= NUMS[x] 
    else
      sum += NUMS[x]
    end
  end
  return sum
end