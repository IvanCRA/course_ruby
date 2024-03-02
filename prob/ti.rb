class Gladiator
    attr :name
  
    def initialize(name)
      @name = name
    end
  
    def say_hello
      puts "Поклон тебе, Цезарь!"
      yield(name) if block_given?
      puts "Идущие на смерть приветствуют тебя!"
    end
  
    # остальное опустим для краткости
    # ...
  end
  spartak = Gladiator.new("Спартак")
  spartak.say_hello do |gh|
    puts "fghjk"
    puts "1234567"
    puts "zxcv#{gh}bnm,"
    puts "kl;'][po"
  end