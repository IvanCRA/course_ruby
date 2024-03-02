# frozen_string_literal: true

module Calculate
  def calc(str)
    aphowit = (('а'..'я').to_a + ('А'..'Я').to_a)
    (0..str.length).each do |posI|
      index = aphowit.index(str[posI])
      next unless index != ''

      str[posI] = if index == 31
                    aphowit[0]
                  elsif index == 62
                    aphowit[31]
                  elsif str[posI] == ' '
                    str[posI]
                  else
                    aphowit[index.to_i + 1]
                  end
    end
    str
  end
end
