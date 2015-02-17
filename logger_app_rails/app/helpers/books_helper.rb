module BooksHelper
	require "#{ Rails.root }/lib/assets/log/console_logger"
	require "#{ Rails.root }/lib/assets/log/file_logger"
	require "#{ Rails.root }/lib/assets/log/http_logger"
	
	
	def self.console_log_message(logger_level)
		cons1 = case logger_level
		when "info"
			ConsoleLogger.new(1, "Hello, welcome to Ruby on Rails - Listing Book(s)")
		when "warn"
			ConsoleLogger.new(2, "About to create or edit a Book. Watch for missing title..")
		when "error"
			ConsoleLogger.new(3, "Error, error, check for missing title or description..")
		end
		cons1.console_log
	end

	def self.log_to_file(logger)
		file = case logger
		when "info"
			FileLogger.new(1, "Hello, welcome to Ruby on Rails - Listing Book(s)")
		when "warn"
			FileLogger.new(2, "About to create or edit a Book. Watch for missing title..")
		when "error"
			FileLogger.new(3, "Error, error, check for missing title or description..")
		end
		file.write_to_file
	end

	def self.http_log_console
		message = HTTPLogger.new(1, "Success! Created a new book!")
		message.log_http_message
	end
end
