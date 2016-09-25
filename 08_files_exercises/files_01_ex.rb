# Let's take one file's contents as input and create a 
# new transformed file as a result

# Create a first file
first_file = File.new("first_file.txt", "w+")

# Write some content in the first file
File.open(first_file, "w") {|file| file.puts "This is from first_file"}

# Create a second file
second_file = File.new("second_file.txt", "w+")

# Save the content of the first file in a variable
first_content = File.read(first_file)

# Move the content of the first file in the second file
File.open(second_file, "a") {|file| file.puts first_content}
  
# Check the result
File.read(second_file)