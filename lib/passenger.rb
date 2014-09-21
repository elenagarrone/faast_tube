class Passenger

	def initialize
		log_out
	end

	def logged?
		@logged
    end

    def log_in
    	@logged = true
    end

    def log_out
    	@logged = false
    end

end