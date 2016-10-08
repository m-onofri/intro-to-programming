# Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?
# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

# This code gives us the error above because the method execute requires a variable as a parameter,
# instead we pass a block. 
# If we want to pass a block, we must add an ampersand in front of the parameter block:


