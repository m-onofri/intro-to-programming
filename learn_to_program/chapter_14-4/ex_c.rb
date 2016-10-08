# Write a method called log that takes a string description of a block (and, of course, a block). 
# Similar to the method do_self_importantly, it should puts a string telling you it started the 
# block and another string at the end telling you it finished and also telling you what the block returned. 
# Test your method by sending it a code block. Inside the block, put another call to log, passing a block to it.

def log description, &block
  puts "Start of #{description}"
  result = block.call
  puts "End of #{description}, returning: #{result}"
end

log "count to a million" do

  log "return false" do
    log "greeting" do
      "Hello user!"
    end
    false
  end

  number = 0
  1000000.times do
    number = number + 1
  end
  number

end