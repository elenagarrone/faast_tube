class Passenger

	def initialize#(options = {})
        # @credit = options(:credit)
        station = Station.new
		log_out(station)
	end

	def logged?
		@logged
    end

    def log_in(station)
    	@logged = true
    end

    def log_out(station)
    	@logged = false
    end


end