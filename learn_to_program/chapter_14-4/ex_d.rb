# Better program logger. 
# Indent the lines in the inner blocks

def log description, depth_level, &block
  puts "  " * depth_level + "Start of #{description}"
  result = block.call
  puts "  " * depth_level + "End of #{description}, returning: #{result}"
end

log "count to a million", 0 do

  log "return false", 1 do
    log "greeting", 2 do
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