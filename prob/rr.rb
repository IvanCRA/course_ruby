include Math
#module Cal
    def calc()
        $y = $x + $h/2
        res = $res + (log($y.to_f))
        $x = $x + $h
    end
#end
$n = 100
$f = 0
$h  = 1.0/$n
$x = 1.0
$res = 0

#($n-1).times { |i| calc() }
#n.times(n) { |i| res}

#puts $res
puts $x + $h/2
puts log($x + $h/2)

