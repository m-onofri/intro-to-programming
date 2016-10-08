#  # These are just to make the map # easier for me to read. "M" is # visually more dense than "o". 
 M = 'land'
 o = 'water'
world = [
        [o,o,o,o,o,o,o,o,o,o,o], 
        [o,o,o,o,M,M,o,o,o,o,o], 
        [o,o,o,o,o,o,o,o,M,M,o], 
        [o,o,o,M,o,o,o,o,o,M,o], 
        [o,o,o,M,o,M,M,o,o,o,o], 
        [o,o,o,o,M,M,M,M,o,o,o], 
        [o,o,o,M,M,M,M,M,M,M,o], 
        [o,o,o,M,M,o,M,M,M,o,o], 
        [o,o,o,o,o,o,M,M,o,o,o], 
        [o,M,o,o,o,M,o,o,o,o,o], 
        [o,o,o,o,o,o,o,o,o,o,o]
      ]

def continent_size world, x, y 
  if world[y][x] != 'land'
    # Either it's water or we already
    # counted it, but either way, we don't # want to count it now.
    return 0
  end
  # So first we count this tile...
  size = 1
  world[y][x] = 'counted land'
  # ...then we count all of the
  # neighboring eight tiles (and,
  # of course, their neighbors by
  # way of the recursion).
  size = size + continent_size(world, x-1, y-1) 
  size = size + continent_size(world, x , y-1) 
  size = size + continent_size(world, x+1, y-1) 
  size = size + continent_size(world, x-1, y ) 
  size = size + continent_size(world, x+1, y ) 
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x , y+1) 
  size = size + continent_size(world, x+1, y+1)

  size

end

puts continent_size(world, 5, 5)

# Now test it by extending the continent to touch one (or better yet, all four) of the edges of the world

world_1 = [
        [o,M,o,o,o,o,o,o,o,o,o], 
        [o,M,o,o,M,M,o,o,o,o,o], 
        [M,M,o,o,o,o,o,o,M,M,o], 
        [o,M,M,M,o,o,o,o,o,M,o], 
        [o,o,o,M,o,M,M,o,o,o,o], 
        [o,o,o,o,M,M,M,M,o,o,o], 
        [o,o,o,M,M,M,M,M,M,M,M], 
        [o,o,o,M,M,o,M,M,M,o,o], 
        [o,o,o,o,o,o,M,M,o,o,o], 
        [o,M,o,o,o,M,o,o,o,o,o], 
        [o,o,o,o,o,M,o,o,o,o,o]
      ]

def continent_size_1 world, x, y 
  if x < 0 || x > 10 || y < 0 || y > 10
    # When the indexes x and y are less than 0 or bigger than 10, 
    # it means we are over the board of world_1, so we want 
    # the method returns zero.
    return 0
  end
  if world[y][x] != 'land'
    # Either it's water or we already
    # counted it, but either way, we don't 
    # want to count it now.
    return 0
  end
  # So first we count this tile...
  size = 1
  world[y][x] = 'counted land'
  # ...then we count all of the
  # neighboring eight tiles (and,
  # of course, their neighbors by
  # way of the recursion).
  size = size + continent_size_1(world, x-1, y-1) 
  size = size + continent_size_1(world, x , y-1) 
  size = size + continent_size_1(world, x+1, y-1) 
  size = size + continent_size_1(world, x-1, y ) 
  size = size + continent_size_1(world, x+1, y ) 
  size = size + continent_size_1(world, x-1, y+1)
  size = size + continent_size_1(world, x , y+1) 
  size = size + continent_size_1(world, x+1, y+1)

  size

end

puts continent_size_1(world_1, 5, 5)