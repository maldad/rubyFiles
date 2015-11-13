def switch edad
    case edad
        when 0..15
            mensaje = "Eres niño"
        when 16..25
            mensaje = "Eres joven"
        when 26..55
            mensaje = "Eres adulto"
        when 56..95
            mensaje = "Eres de la tercera edad"
        else
            mensaje = "You're a mummy"
    end
    puts mensaje
end

switch 22
