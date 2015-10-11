def ip_to_int32(ip)
  ip.split('.').map { |e| e.to_i.to_s(2).rjust(8, '0') } .join.to_i(2)
end
