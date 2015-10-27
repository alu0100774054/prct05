class Fraccionario
	attr_reader :numerador, :denominador, :resultado
	def initialize(numerador,denominador)
		@numerador = numerador
		@denominador = denominador
		@resultado = numerador/denominador
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