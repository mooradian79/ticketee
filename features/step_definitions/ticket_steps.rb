Given /^that project had a ticket:$/ do |table|
  table.hashes.each do |attributes|
  	@project.tickets.create!(attributes)
  	end
end

