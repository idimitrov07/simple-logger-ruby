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
			"INFO"
		when 2
			"WARNING"
		when 3
			"PLSCHECKFFS"
		end
		#	"#{level_name}: #{@message}"
	end

	def log
		"#{get_level}::#{Time.now.iso8601}::#{@message}"
	end

end



# loginfo = MyLogger.new(1, "Hello")
# logwarn = MyLogger.new(2, "Hello Hello")
# logerr = MyLogger.new(3, "Error")

# puts loginfo.log
# puts logwarn.log
# puts logerr.log

