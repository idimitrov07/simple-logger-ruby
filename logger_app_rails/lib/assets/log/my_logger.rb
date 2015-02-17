class MyLogger
	require 'time'
	attr_accessor :level, :message

	def initialize(level, message)
		@level = level
		@message = message
	end

	def get_level
		level_name = case @level
		when 1
			"INFO".colorize(:light_blue)
		when 2
			"WARNING".colorize(:yellow)
		when 3
			"PLSCHECKFFS".colorize(:red)
		end
		#	"#{level_name}: #{@message}"
	end

	def log
		time = Time.now.iso8601.colorize(:light_yellow)
		"#{get_level}::#{time}::#{@message}"
	end

end



# loginfo = MyLogger.new(1, "Hello")
# logwarn = MyLogger.new(2, "Hello Hello")
# logerr = MyLogger.new(3, "Error")

# puts loginfo.log
# puts logwarn.log
# puts logerr.log

