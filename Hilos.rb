
	def funcion
		i=0
		while i<=2
			puts "TIEMPO PARA LA FUNCION1 #{Time.now}"
			sleep(2)
			i += 1			
		end

	end

	def funciondos
		j = 0 
		while j<=2
			puts "tiempo para funciondos #{Time.now}"
			sleep(1)
			j += 1		
		end
	end

	puts "empezo en el tiempo #{Time.now}"
	t1 = Thread.new{funcion()}
	t2 = Thread.new{funciondos()}
	t1.join
	t2.join
	puts "termina en #{Time.now}"

