# Lets look at the current directory and report the 
# files that have .txt extensions

#get a new directory object of the current directory
current_dir = Dir.new(".")

#run through the files in the directory
while file = current_dir.read do
  #check if the extension of the current file is .txt
  if File.extname(file) == ".txt"
    #if the condition is true, write on the screen the following sentence
    puts "#{file} has extensions .txt"
  end
end