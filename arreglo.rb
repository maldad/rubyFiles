class Arreglo
    arreglo = [1, 2, 3, 4, 5]
    def cuadrado arr
        #arr.map { |num| num * num }
        #arr
        puts "elevando al cuadrado"
        for x in arr
            x = x**2
            print "#{x}, "
        end
    end

    def cubo arr
        puts "elevando al cubo"
        for x in arr
            x = x**3
            print "#{x}, "
        end
    end

    obj = Arreglo.new
    p arreglo
    obj.cuadrado(arreglo)
    obj.cubo arreglo
end
