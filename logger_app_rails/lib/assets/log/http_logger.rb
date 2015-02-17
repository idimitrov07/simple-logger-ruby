require File.expand_path('../my_logger.rb', __FILE__)

class HTTPLogger < MyLogger

	def log_http_message
		puts self.log
	end

end