# Grandfather clock. 
# Write a method that takes a block and calls it once for each hour that has passed today.

def grandfather_clock &block

  current_hour = Time.new.hour

  current_hour.times do
    block.call
  end

end

grandfather_clock do
  puts "DONG!"
end