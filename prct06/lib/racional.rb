require "../lib/gcd.rb"
class Racional
  
    attr_accessor :numerador
    attr_accessor :denominador

    def initialize(numeradorI, denominadorI)
        minimize numeradorI, denominadorI
    end
    
    def num
        return @numerador
    end
    
    def denom
        return @denominador
    end
    #Metodo de clase que retorna dos Racionales con los denominadores normalizados
    def Racional.normalizar(operador1, operador2)
      x = Racional.new(1, 1)
      x.numerador = operador1.numerador * operador2.denominador
      x.denominador = operador1.denominador * operador2.denominador
      y = Racional.new(1, 1)
      y.numerador = operador2.numerador * operador1.denominador
      y.denominador = operador2.denominador * operador1.denominador
      return x, y
    end
    
    def minimize(numeradorI, denominadorI)
        maxComunDiv = gcd numeradorI, denominadorI
        @numerador = numeradorI / maxComunDiv
        @denominador = denominadorI / maxComunDiv
        puts "----------------------"
        puts "Fracción Minimizada: "
        puts @numerador
        puts @denominador
        puts "----------------------"
    end
    
    #Metodo de clase que retorna una fraccion en su forma minima
    def Racional.minimizar(numerador, denominador)
      maxComunDiv = gcd numerador, denominador
      numerador /=  maxComunDiv
      denominador /=  maxComunDiv
      Racional.new(numerador, denominador)
    end
    
    def minimize2
        maxComunDiv = gcd @numerador, @denominador
        @numerador = @numerador / maxComunDiv
        @denominador = @denominador / maxComunDiv
        puts "----------------------"
        puts "Fracción Minimizada2: "
        puts @numerador
        puts @denominador
        puts "----------------------"
    end
    
    def abs
        return ((@numerador/@denominador).abs)
    end
    
    def reciprocal
	aux = @numerador
        @numerador = @denominador
        @denominador = aux
    end
    
    def +(operador)
      num = (@numerador * operador.denominador) + (operador.numerador * @denominador)
      den = (@denominador * operador.denominador)
      Racional.minimizar(num, den)
    end
    
    def -@
      @numerador = - @numerador
      return self
    end
    
    def to_f
    n = nil
    if (@numerador != nil && @denominador != nil) 
      n = @numerador
      n /= @denominador
    end
    return n
  end
    
    def <(operador)
    if (@denominador == operador.denominador) 
      resultado = @numerador < operador.numerador
    else
      #Se normalizan los dos operadores para poder comparar los denominadores directamente
      x, y = Racional.normalizar(self, operador)
      resultado = x.numerador < y.numerador

    end
    resultado
  end
  
  def >(operador)
    if (@denominador == operador.denominador) 
      resultado = @numerador > operador.numerador
    else
      #Se normalizan los dos operadores para poder comparar los denominadores directamente
      x, y = Racional.normalizar(self, operador)
      resultado = x.numerador > y.numerador

    end
    resultado
  end
  
  def ==(operador)
    minimize2
    operador.minimize2
    if (@numerador == operador.numerador) && (@denominador == operador.denominador)
      resultado = true
    else
      resultado = false
    end
    resultado
  end
end