require File.expand_path('../my_logger.rb', __FILE__)

class ConsoleLogger < MyLogger

	def console_log
		puts self.log
	end

end

# cons1 = ConsoleLogger.new(1, "Hello, welcome to Ruby")
# cons2 = ConsoleLogger.new(2, "Be careful..")
# cons3 = ConsoleLogger.new(3, "Error, error, check log")

# cons1.console_log
# cons2.console_log
# cons3.console_log