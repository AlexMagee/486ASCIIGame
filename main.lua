player = {
  x=15,
  y=15,
  tile=1
}

entities = {
  {
    x=8,
    y=4,
    tile=2,
    color = {r=0,b=0,g=255},
    alive=true
  }
}

notification = "Arrow keys to move"

currency = 0

wallColor = {179,89,0}

tileColors = {
  {0,0,0},
  {255,255,255},
  {255,215,0},
  wallColor,
  wallColor,
  wallColor,
  wallColor,
  wallColor,
  wallColor,
  wallColor,
  {0,255,0}
}

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
	map={{}}
  
  for x=1, 20 do
    map[x]={}
    for y=1, 20 do
      map[x][y] = 10
    end
  end

  house = {
    {-1,-1,3,8,8,8,8,8,8,8,5,-1,-1,-1,-1,-1,-1},
    {-1,-1,7,0,9,0,8,9,0,9,7,-1,-1,-1,-1,-1,-1},
    {3,8,6,9,7,0,0,0,0,9,7,-1,-1,-1,-1,-1,-1},
    {7,7,9,0,7,9,3,8,8,8,7,-1,-1,-1,-1,-1,-1},
    {7,0,0,0,9,0,9,0,0,7,7,-1,-1,-1,-1,-1,-1},
    {7,9,8,0,7,0,7,8,8,8,7,-1,-1,-1,-1,-1,-1},
    {7,8,8,8,7,0,7,0,0,0,7,-1,-1,-1,-1,-1,-1},
    {7,0,0,0,9,0,7,0,0,0,7,-1,-1,-1,-1,-1,-1},
    {7,8,0,0,7,0,4,8,8,9,7,-1,-1,-1,-1,-1,-1},
    {7,9,0,0,7,0,0,0,0,0,7,-1,-1,-1,-1,-1,-1},
    {7,9,0,0,7,0,0,7,0,0,7,-1,-1,-1,-1,-1,-1},
    {7,8,0,0,7,0,0,7,0,0,7,-1,-1,-1,-1,-1,-1},
    {7,0,0,0,7,0,0,0,0,0,9,-1,-1,-1,-1,-1,-1},
    {4,5,0,0,7,0,0,8,8,8,6,-1,-1,-1,-1,-1,-1},
    {-1,7,0,0,0,0,0,0,7,-1,-1,-1,-1,-1,-1,-1,-1},
    {0,9,0,0,0,0,0,0,7,-1,-1,-1,-1,-1,-1,-1,-1},
    {-1,4,8,8,8,8,8,8,6,-1,-1,-1,-1,-1,-1,-1,-1}
  }
  
  add_feature(map, house, 1, 1)
  draw_entities()
 
	-- map variables
  map_display_w = #map[1]
	map_display_h = #map
	tile_w = 8
	tile_h = 12
  
	map_w = #map[1] -- Obtains the width of the first row of the map
	map_h = #map -- Obtains the height of the map
	map_x = 0 - tile_w/2
	map_y = 0 - tile_h/2
	map_display_buffer = 2 -- We have to buffer one tile before and behind our viewpoint.
	
end

function draw_entities()
  for i=1, #entities do
    if(entities[i].alive==true) then
      map[entities[i].y][entities[i].x] = entities[i].tile
    end
  end
  map[player.y][player.x] = player.tile
end

function add_feature(map, feature, ox, oy)
  for x=1, #feature[1] do
    for y=1, #feature do
      if(feature[x][y]~=-1) then
        map[ox+x][oy+y] = feature[x][y];
      end
    end
  end
end
 
function draw_map()
	offset_x = map_x % tile_w
	offset_y = map_y % tile_h
	firstTile_x = math.floor(map_x / tile_w)
	firstTile_y = math.floor(map_y / tile_h)
 
	for y=1, (map_display_h + map_display_buffer) do
		for x=1, (map_display_w + map_display_buffer) do
			-- Note that this condition block allows us to go beyond the edge of the map.
			if y+firstTile_y >= 1 and y+firstTile_y <= map_h
				and x+firstTile_x >= 1 and x+firstTile_x <= map_w
			then
        love.graphics.setColor(tileColors[map[y+firstTile_y][x+firstTile_x]+1])
				love.graphics.draw(
					tile[map[y+firstTile_y][x+firstTile_x]], 
					((x-1)*tile_w) - offset_x - tile_w/2, 
					((y-1)*tile_h) - offset_y - tile_h/2)
			end
		end
	end
end
 
function love.update( dt )
  
end

function checkInteract(y,x)
  for i=1, #entities do
    if(entities[i].x==x and entities[i].y==y and entities[i].alive==true) then
      notification = "Idol found,\nPress E to interact"
      break
    end
  end
end

function interact(x,y)
  for i=1, #entities do
    if(entities[i].x==x and entities[i].y==y and entities[i].alive==true) then
      entities[i].alive = false
      currency = currency + 500
      notification = "Arrow keys to move"
      break
    end
  end
end
 
function love.keypressed(key, scancode, isrepeat)
  if(key == "up" and player.y-1 > 0) then
    if(map[player.y-1][player.x] == 0 or map[player.y-1][player.x] >= 9) then
      player.y = player.y-1
      notification = "Arrow keys to move"
    elseif(map[player.y-1][player.x] == 2) then
      interact(player.y-1,player.x)
      player.y = player.y-1
    else
      notification = "Arrow keys to move"
    end
  end
  if(key == "down" and player.y+1 < #map) then
    if(map[player.y+1][player.x] == 0 or map[player.y+1][player.x] >= 9) then
      player.y = player.y+1
      notification = "Arrow keys to move"
    elseif(map[player.y+1][player.x] == 2) then
      checkInteract(player.y+1,player.x)
      player.y = player.y+1
    else
      notification = "Arrow keys to move"
    end
  end
  if(key == "right" and player.x+1<#map[1]) then
    if(map[player.y][player.x+1] == 0 or map[player.y][player.x+1] >= 9) then
      player.x = player.x+1
      notification = "Arrow keys to move"
    elseif(map[player.y][player.x+1] == 2) then
      checkInteract(player.y,player.x+1)
      player.x = player.x+1
    else
      notification = "Arrow keys to move"
    end
  end
  if(key == "left" and player.x-1>0) then
    if(map[player.y][player.x-1] == 0 or map[player.y][player.x-1] >= 9) then
      player.x = player.x-1
      notification = "Arrow keys to move"
    elseif(map[player.y][player.x-1] == 2) then
      checkInteract(player.y,player.x-1)
      player.x = player.x-1
    else
      notification = "Arrow keys to move"
    end
  end
  if(key == "e") then
    interact(player.x,player.y)
  end
  renderWorld()
end
 
function love.draw()
	draw_map()
  love.graphics.setColor(255,255,255)
  love.graphics.print(notification, 10, 250)
  love.graphics.setColor(0,255,0)
  love.graphics.print("$"..currency, 10,280)
end