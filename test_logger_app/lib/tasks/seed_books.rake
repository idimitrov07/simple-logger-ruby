task desc "Seeding the database with entries"
task :seed_books  do
	Book.delete_all
	x = 1
	20.times do |b|
		b = Book.new
		b.title = "Book No: #{x}"
		b.description = "Very nice book to read #{x} times.."
		b.save
		x = x + 1
	end
end