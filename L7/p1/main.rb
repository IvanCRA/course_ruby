# frozen_string_literal: true

require_relative 'func'
include Func
clear_file_f
create_file_f
strArr = getLines

puts(writeLines(strArr))
