include Math
class TriPointers
    attr_accessor :x1, :y1, :x2, :y2, :x3, :y3

    def initialize(x1, y1, x2, y2, x3, y3)
        @x1, @y1, @x2, @y2, @x3, @y3 = x1, y1, x2, y2, x3, y3
    end
    def print_count()
        puts("x1:#{@x1}\ny1:#{@y1}\nx2:#{@x2}\ny2:#{@y2}\nx3:#{@x3}\ny3:#{@y3}")
    end
    def area()
        puts(0.5 * (@x1 * (@y2 - @y3) + @x2*(@y3 - @y1) + @x3 * (@y1-@y2)))
    end
    
end

class Prizm < TriPointers
    attr_accessor :x4, :y4, :x5, :y5, :x6, :y6,

    def initialize(x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6)
        super(x1, y1, x2, y2, x3, y3)
        @x4, @y4, @x5, @y5, @x6, @y6 = x4, y4, x5, y5, x6, y6
    end
    def print_count()
        puts("p1:#{@x1} #{y1}\np2:#{@x2} #{@y2}\np3:#{@x3} #{@y3}\np4:#{@x4} #{@y4}\np5:#{@x5} #{@y5}\np6:#{@x6} #{@y6}")
    end
    def area()
        puts(0.5 * (@x1 * (@y2 - @y3) + @x2*(@y3 - @y1) + @x3 * (@y1-@y2)))
    end
    
end

#prizma = Prizm.new(1,2,3,4,5,6,7,8,9,10,11,12)
a = Prizm.new(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
a.print_count()