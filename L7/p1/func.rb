# frozen_string_literal: true

# file
module Func
  def clear_file_f
    File.write('F.txt', '')
  end

  def create_file_f(symbool_count = 100)
    file = File.new('F.txt', 'w:UTF-8')
    arr = ('a'..'z').to_a + ('A'..'Z').to_a + [' '] * 12 + ["\n"] * 3
    symbool_count.times do
      file.print(arr.sample)
    end
    file.close
  end

  def getLines
    File.open(
      'F.txt'
    ) do |fFile|
      strArrF = fFile.readlines
      return strArrF
    end
  end

  def writeLines(strArr)
    File.write('G.txt', '')
    strArr.reverse.each do |n|
      File.write('G.txt', "#{n.chomp.reverse}\n", mode: 'a')
      puts(n.chomp.reverse)
    end
  end
end
