require File.expand_path('../my_logger.rb', __FILE__)

class FileLogger < MyLogger 

	def log_to_file
		open('logger.txt', 'a') do |f1|
			f1.puts self.log + "\n"
		end
	end
end

filelog1 = FileLogger.new(1, "Helllo")
filelog2 = FileLogger.new(2, "Warn Warn")
filelog3 = FileLogger.new(3, "error error")

filelog1.log_to_file
filelog2.log_to_file
filelog3.log_to_file