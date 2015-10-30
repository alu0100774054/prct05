class Fraccionario
	attr_reader :numerador, :denominador, :resultado
	
	def mcd(a,b)
		b == 0 ? a : gcd(b,a%b)
	end

	def mcm(a,b)
		aux1 = a * b
		sol = aux1 / mcd(a,b)
	end

	def initialize(numerador,denominador)
		raise TypeError, "Denominator may not be zero" if denominador.eql? 0
		
		reducir = mcd(numerador,denominador)

		@numerador = numerador / reducir
		@denominador = denominador / reducir
		@resultado = numerador/denominador
	end
	
	#operaciones de igualdad
	def <(aux)
	  (@numerador * aux.denomador) < (@denomador * aux.numerador) 
	end

	def >(aux)
	  (@numerador * aux.denomador) > (@denomador * aux.numerador) 
	end

	def <=(aux)
	  (@numerador * aux.denomador) <= (@denomador * aux.numerador) 
	end

	def >=(aux)
	  (@numerador * aux.denomador) >= (@denomador * aux.numerador) 
	end
	#Operaciones aritmeticas
	def +(f2)
		Fraccionario.new(((@numerador*f2.denominador)+(@denominador*f2.numerador)),@denominador*f2.denominador)
	end

	def -(f2)
		Fraccionario.new((@numerador*f2.denominador)+(@denominador*f2.numerador),@denominador*f2.denominador)
	end

	def *(f2)
		Fraccionario.new(@numerador*f2.numerador,@denominador*f2.denominador)
	end

	def /(f2)
		Fraccionario.new(@numerador*f2.denominador,@denominador*f2.numerador)
	end
	#Metodo para mostrar el numero en fraccion
	def to_s()
    	" #{@numerador}\n--- = #{@resultado}\n #{@denominador}"
	end
	def mostrar
		puts resultado
	end
end
