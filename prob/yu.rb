arr = [13, 7, 29, 13, 8, 29]
result = arr.inject(Hash.new(0)) { |memo, x| memo[x] += 1   ; memo }
puts result.map{|k| "#{k}"}.join(' ')