# frozen_string_literal: true

require_relative 'sickdis'

firsR = SickdisPointers.new('Больной на голову', '5446', 2005, 2006)
firsR.print_sickdis
puts(firsR.nextDis)
