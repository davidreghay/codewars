def calculate(n1,n2,op)
  n1 = n1.to_i(2)
  n2 = n2.to_i(2)
  case op
  when 'add'
    (n1 + n2).to_s(2)
  when 'subtract'
    (n1 - n2).to_s(2)
  when 'multiply'
    (n1 * n2).to_s(2)
  when 'divide'
    (n1 / n2).to_s(2)
  end
end
