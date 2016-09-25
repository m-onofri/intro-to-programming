# What will the following program print to the screen? 
# What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# The program will print nothing to the screen because it miss the call method
# The program will return a Proc object 


# Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }