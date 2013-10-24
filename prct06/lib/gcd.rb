def gcd(u, v)
        if (u != 0 and v != 0 )
                u, v = u.abs, v.abs
                while v != 0 #Cambiado el == de la condicion
                        u, v = v, u % v
                end
                return u
        else
                return 1
        end
end
