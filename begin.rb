begin  
	puts "dd"
  raise 'A test exception.' 
  puts "after" 
rescue Exception => e  
  puts e.message  
  puts e.backtrace.inspect  
end 