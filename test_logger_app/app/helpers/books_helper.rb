
module BooksHelper
	require "console_logger"
	
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
		# cons2.console_log
		# cons3.console_log
	end

	# def console_log_message
	# 	BooksHelper.send_log_message
	# end
end
