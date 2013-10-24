#require File.join(File.dirname(__FILE__), "/../spec_helper")
require "../lib/racional.rb"
describe Racional do

  context "Comprobarción de atributos." do
      it "Debe existir un numerador" do
       @x = Racional.new(2, 3)
       defined?(@x.numerador)
      end
      it "Debe existir un denominador" do
	  defined?(@x.denominador)
      end
      
      it "Debe de estar en su forma reducida." do
	@x = Racional.new(2, 4)
        @x.minimize2
        if (1 != @x.numerador)
	  puts "incorrecto"
	end
        #assert_equal(2, @x.denominador)
      end
      
      it "Se debe invocar al metodo num() para obtener el numerador." do
	r = Racional.new(2, 4)
        numerador = r.num()
	puts "El numerador vale:"
	puts numerador
      end
      
      it "Se debe invocar al metodo denom() para obtener el denominador." do
        r = Racional.new(2, 4)
        denominador = r.denom()
	puts "El denominador vale:"
	puts denominador
      end
      
      it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador." do
        
      end
      
      
      it "Se debe mostar por la consola la fraccion en formato flotante." do
        
      end
  end
    
  context "Comprobacion de operaciones." do
    
    before :each do
        @c = Racional.new(0, 1)
        @x = Racional.new(3, 2)
        @y = Racional.new(1, 2)
      end
      
      it "Se debe calcular el valor absoluto de una fraccion con el metodo abs." do
        r = Racional.new(4, 4)
        abs = r.abs()
	puts "El abs vale:"
	puts abs
      end
      
      it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal." do
        r = Racional.new(1, 4)
        r.reciprocal()
	puts "El numerador vale:"
	puts r.numerador
	puts "El denorminador vale:"
	puts r.denominador
      end
      
      it "Se debe calcular el opuesto de una fraccion con -." do
        @c = - @x
        @c.numerador.should eq(-3)
      end
      
      it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida." do #
	@c = @x + @y
        @c.numerador.should eq(2)
        @c.denominador.should eq(1)
      end
      
      it "Se debe restar dos fracciones con - y dar el resultado de forma reducida." do
        
      end
      
      it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida." do
        
      end
      
      it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida." do
        
      end
      
      it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida." do
        
      end
  end
    
  context "Comprobacion de comparaciones." do
      before :each do
        @c = Racional.new(0, 1)
        @x = Racional.new(3, 2)
        @y = Racional.new(1, 2)
      end
      it "Se debe comparar si dos fracciones son iguales con ==" do #
        @x.numerador = 1
	@x.denominador = 2
	@y.numerador = 1
	@y.denominador = 2
	resultado = @x == @y
        resultado.should eq(true)
	@x.numerador = 1
	@x.denominador = 2
	@y.numerador = 2
	@y.denominador = 4
	resultado = (@x == @y)
        resultado.should eq(true)
      end
      
      it "Se debe de poder comprobar si una fracion es menor que otra." do #
        resultado = @x < @y
	resultado.should eq(false)
	@x.numerador = 1
	@x.denominador = 2
	@y.numerador = 3
	@y.denominador = 2
	resultado = @x < @y
        resultado.should eq(true)
      end
      
      it "Se debe de poder comprobar si una fracion es mayor que otra." do
        
      end
      
      it "Se debe de poder comprobar si una fracion es menor o igual que otra." do
        
      end
      
      it "Se debe de poder comprobar si una fracion es mayor o igual que otra." do
        
      end
      
  end 
  
end