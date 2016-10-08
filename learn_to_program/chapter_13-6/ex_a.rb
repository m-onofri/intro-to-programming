# Make an OrangeTree class that has a height method that returns its height and a one_year_passes method that, 
# when called, ages the tree one year. Each year the tree grows taller (however much you think an orange tree 
# should grow in a year), and after some number of years (again, your call) the tree should die. 
# For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees 
# produce more each year than younger trees...whatever you think makes the most sense. 
# And, of course, you should be able to count_the_oranges (which returns the number of oranges on the tree) and 
# pick_an_orange (which reduces the @orange_count by 1 and returns a string telling you how delicious the orange was, 
# or else it just tells you that there are no more oranges to pick this year). 
# Make sure any oranges you don’t pick one year fall off before the next year.

class Orange_tree

  def initialize
    @alive_tree = true
    @height = 0         # cm
    @age = 0            # year
    @max_age = 20      # year
    @grow_height = 3    # cm
    @fruit = 0
    new_year
  end

  def height
    puts "The orange tree is #{@height} cm tall"
  end

  def age
    puts "The orange tree is #{@age} years old" 
  end

  def count_the_orange
    if @fruit == 0
      puts "There are no fruit on the tree"
    elsif @fruit == 1
      puts "There's one fruit on the tree"
    else
      puts "There are #{@fruit} oranges on the tree"
    end
    return @fruit
  end

  def pick_an_orange
    if @fruit == 0
      puts "There's no fruit on the tree!"
    else
      @fruit -= 1
      puts "I pick one delicious orange from the tree!"
    end
  end

  def end_of_season
    puts "Another year is ending!"
    one_year_passes
  end

  def is_alive? 
    @alive_tree
  end

  private

  def one_year_passes
    @fruit = 0
    @age += 1
    if @age == @max_age
      puts "Oh, no, the orange tree is dead!!!"
      @alive_tree = false
    else
      new_year
    end
  end

  def new_year
    puts "A new season in coming!"
    @height += @grow_height
    make_fruit
  end

  def make_fruit
    if @age < 6
      @fruit = 0
    elsif @age > 5 && @age < 11
      @fruit = 10
    else
      @fruit = 15
    end
  end

end

orange_tree = Orange_tree.new
while orange_tree.is_alive?
  orange_tree.age
  orange_tree.height
  while orange_tree.count_the_orange > 0
    orange_tree.pick_an_orange
  end
  orange_tree.end_of_season
end








