month = Array.new
Dir.glob('*.txt') do |financial_report|
	puts "Working on: #{financial_report}..."
	File.open(financial_report).each do |line|
		if line.include? "a-dark-room"
			date = line.split(/\//)[0].to_i
			month = (line.split(/\//)[1].to_i > 15) ? (date + 1 > 12) ? 1 : date + 1 : date
		end
	end
end

puts month.to_s
