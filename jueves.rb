class Materia
    attr_reader :nombre
    attr_accessor :calificacion
    def initialize nombre
        @nombre = nombre
        @calificacion
    end
end

class Alumno
    #attr_accessor :arr_materia
    attr_reader :nombre, :arr_materia
    def initialize nombre
        @nombre = nombre
        @edad
        @arr_materia = []
    end

    def agrega_materia mat
        @arr_materia << mat
    end

    def ver_materias
        @arr_materia.each{ |mat| print "#{mat.nombre}; " }
        puts
    end

    def ver_calificaciones
        @arr_materia.each{ |mat| puts "#{mat.nombre}: #{mat.calificacion}" }
    end

    def ver_mayor_calificacion
        arr_calificacion = []
        for mat in @arr_materia
            arr_calificacion << mat.calificacion
        end
        cmayor = arr_calificacion.max
        index = arr_calificacion.find_index cmayor
        nombre_materia = @arr_materia[index].nombre
        puts "#{cmayor}, #{nombre_materia}"
    end
end

#########################################

calc = Materia.new 'calculo'
progra = Materia.new 'programacion'
auto = Materia.new 'automatas'
calc.calificacion = 90
progra.calificacion = 80
auto.calificacion = 100

alu = Alumno.new 'agus'
puts "NOMBRE DEL ALUMNO: #{alu.nombre}"

alu.agrega_materia calc
alu.agrega_materia progra
alu.agrega_materia auto

puts 'sus materias son:'.upcase
alu.ver_materias
puts 'sus calificaciones son:'.upcase
alu.ver_calificaciones
puts 'su mayor calificacion es'.upcase
alu.ver_mayor_calificacion
