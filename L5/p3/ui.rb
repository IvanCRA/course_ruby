# frozen_string_literal: true

require_relative 'calc'
include Calculate

test1 = gets
res = calc(test1)
res[res.size - 1] = ''
res[res.size - 1] = ''
puts res
