# Modify the profile method so you can turn all profiling on and off by changing just one line of code.

def profile block_description, switch=false, &block
  
  if switch
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end

end

profile 'count to a million', true do 
  number = 0
  1000000.times do
    number = number + 1
  end 
end