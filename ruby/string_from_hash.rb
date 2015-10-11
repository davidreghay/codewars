def solution(pairs)
	pairs.to_a.map { |a| a.join(" = ") } .join ','
end
