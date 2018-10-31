require("maps")

player = {
  x=3,
  y=7,
  tile=1,
  tileColor=1
}

entities = {
  {
    x=8,
    y=4,
    tile=2,
    tileColor=5,
    color = {r=0,g=0,b=255},
    alive=true,
    notification="Red Idol found,\nPress E to interact",
    name = "Tooth Brush"
  },
  {
    x=10,
    y=6,
    tile=2,
    tileColor=4,
    color = {r=0,g=0,b=255},
    alive=true,
    notification="Yellow Idol found,\nPress E to interact",
    name = "Tooth Brush"
  },
  {
    x=3,
    y=14,
    tile=2,
    tileColor=6,
    color = {r=0,b=0,g=255},
    alive=true,
    notification="Blue Idol found,\nPress E to interact",
    name = "Tooth Brush"
  }
}

inventoryString = ""

notification = "Arrow keys to move"

currency = 0

function love.load()
  renderWorld()
end

function renderWorld()
	-- our tiles
	tile = {}
	for i=0,10 do -- change 3 to the number of tile images minus 1.
		tile[i] = love.graphics.newImage( "assets/tile"..i..".png" )
	end
 
	-- the map (random junk + copy and paste)
  map = realmap.landscape.tiles
  draw_entities()
 
	-- map variables
  map_display_w = #realmap.landscape.tiles[1]
	map_display_h = #realmap.landscape.tiles
	tile_w = 8
	tile_h = 12
  
	map_w = #realmap.landscape.tiles[1] -- Obtains the width of the first row of the map
	map_h = #realmap.landscape.tiles -- Obtains the height of the map
	map_x = 0 - tile_w/2
	map_y = 0 - tile_h/2
	map_display_buffer = 2 -- We have to buffer one tile before and behind our viewpoint.
	
end

function draw_entities()
  resetEntitiesTiles()
  for i=1, #entities do
    if(entities[i].alive==true) then
      realmap.entities.tiles[entities[i].y][entities[i].x] = entities[i].tile
      realmap.entities.colors[entities[i].y][entities[i].x] = entities[i].tileColor
      realmap.entities.collisions[entities[i].y][entities[i].x] = true
    end
  end
  realmap.entities.tiles[player.y][player.x] = player.tile
  realmap.entities.colors[player.y][player.x] = player.tileColor
end
 
function draw_map(map_name, colors)
	offset_x = map_x % tile_w
	offset_y = map_y % tile_h
	firstTile_x = math.floor(map_x / tile_w)
	firstTile_y = math.floor(map_y / tile_h)
 
	for y=1, (map_display_h + map_display_buffer) do
		for x=1, (map_display_w + map_display_buffer) do
			-- Note that this condition block allows us to go beyond the edge of the map.
			if y+firstTile_y >= 1 and y+firstTile_y <= map_h
				and x+firstTile_x >= 1 and x+firstTile_x <= map_w
        and map_name[y+firstTile_y][x+firstTile_x] ~= 0
			then
        love.graphics.setColor(realmap.palette[colors[y+firstTile_y][x+firstTile_x]])
				love.graphics.draw(
					tile[map_name[y+firstTile_y][x+firstTile_x]], 
					((x-1)*tile_w) - offset_x - tile_w/2, 
					((y-1)*tile_h) - offset_y - tile_h/2)
			end
		end
	end
end
 
function love.update( dt )
  
end

function checkInteract(y,x)
  if(realmap.entities.collisions[y][x]) then
    for i=1, #entities do
      if(entities[i].x==x and entities[i].y==y and entities[i].alive==true) then
        notification = entities[i].notification
        break
      end
    end
  else 
    notification = "Arrow keys to move"
  end
end

function interact(x,y)
  if(realmap.entities.collisions[y][x]) then
    for i=1, #entities do
      if(entities[i].x==x and entities[i].y==y and entities[i].alive==true) then
        entities[i].alive = false
        currency = currency + 500
        notification = "Arrow keys to move"
        break
      end
    end
  end
end
 
function love.keypressed(key, scancode, isrepeat)
  if(key == "up" and player.y-1 > 0 and not realmap.landscape.collisions[player.y-1][player.x]) then
    player.y = player.y-1
  end
  if(key == "down" and player.y+1 < #map and not realmap.landscape.collisions[player.y+1][player.x]) then
    player.y = player.y+1
  end
  if(key == "right" and player.x+1<#map[1] and not realmap.landscape.collisions[player.y][player.x+1]) then
    player.x = player.x+1
  end
  if(key == "left" and player.x-1>0 and not realmap.landscape.collisions[player.y][player.x-1]) then
    player.x = player.x-1
  end
  checkInteract(player.y,player.x)
  if(key == "e") then
    interact(player.x,player.y)
  end
  renderWorld()
end

function buildInventory()
  result = "Inventory:\n"
  for i=1,#inventory do
    result = result .. inventory[i].name .. "\n"
  end
  inventoryString = result
end
 
function love.draw()
	draw_map(realmap.landscape.tiles, realmap.landscape.colors)
  draw_map(realmap.entities.tiles, realmap.entities.colors)
  love.graphics.setColor(255,255,255)
  love.graphics.print(notification, 10, 250)
  love.graphics.setColor(0,255,0)
  love.graphics.print("$"..currency, 10,280)
  love.graphics.setColor(1,1,1)
  buildInventory()
  love.graphics.print(inventoryString,175,10)
end