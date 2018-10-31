b = {t = true, f = false}

function resetEntitiesTiles()
  for i=1,#realmap.entities.tiles do
    for j=1,#realmap.entities.tiles[1] do
      realmap.entities.tiles[j][i] = 0
      realmap.entities.colors[j][i] = 1
      realmap.entities.collisions[j][i] = b.f
    end
  end
end

realmap = {
  landscape = {
    tiles = {
      {10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10},
      {10,10,10,3,8,8,8,8,8,8,8,5,10,10,10,10,10,10,10},
      {10,10,10,7,0,9,0,8,9,0,9,7,10,10,10,10,10,10,10},
      {10,3,8,6,9,7,0,0,0,0,9,7,10,10,10,10,10,10,10},
      {10,7,7,9,0,7,9,3,8,8,8,7,10,10,10,10,10,10,10},
      {10,7,0,0,0,9,0,9,0,0,7,7,10,10,10,10,10,10,10},
      {10,7,9,8,0,7,0,7,8,8,8,7,10,10,10,10,10,10,10},
      {10,7,8,8,8,7,0,7,0,0,0,7,10,10,10,10,10,10,10},
      {10,7,0,0,0,9,0,7,0,0,0,7,10,10,10,10,10,10,10},
      {10,7,8,0,0,7,0,4,8,8,9,7,10,10,10,10,10,10,10},
      {10,7,9,0,0,7,0,0,0,0,0,7,10,10,10,10,10,10,10},
      {10,7,9,0,0,7,0,0,7,0,0,7,10,10,10,10,10,10,10},
      {10,7,8,0,0,7,0,0,7,0,0,7,10,10,10,10,10,10,10},
      {10,7,0,0,0,7,0,0,0,0,0,9,10,10,10,10,10,10,10},
      {10,4,5,0,0,7,0,0,8,8,8,6,10,10,10,10,10,10,10},
      {10,10,7,0,0,0,0,0,0,7,10,10,10,10,10,10,10,10,10},
      {10,0,9,0,0,0,0,0,0,7,10,10,10,10,10,10,10,10,10},
      {10,10,4,8,8,8,8,8,8,6,10,10,10,10,10,10,10,10,10},
      {10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10}
    },
    colors = {
      {3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3},
      {3,3,3,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3},
      {3,3,3,2,1,2,1,2,2,1,2,2,3,3,3,3,3,3,3},
      {3,2,2,2,2,2,1,1,1,1,2,2,3,3,3,3,3,3,3},
      {3,2,2,2,1,2,2,2,2,2,2,2,3,3,3,3,3,3,3},
      {3,2,1,1,1,2,1,2,1,1,2,2,3,3,3,3,3,3,3},
      {3,2,5,2,1,2,1,2,2,2,2,2,3,3,3,3,3,3,3},
      {3,2,2,2,2,2,1,2,1,1,1,2,3,3,3,3,3,3,3},
      {3,2,1,1,1,2,1,2,1,1,1,2,3,3,3,3,3,3,3},
      {3,2,3,1,1,2,1,2,2,2,2,2,3,3,3,3,3,3,3},
      {3,2,3,1,1,2,1,1,1,1,1,2,3,3,3,3,3,3,3},
      {3,2,3,1,1,2,1,1,2,1,1,2,3,3,3,3,3,3,3},
      {3,2,3,1,1,2,1,1,2,1,1,2,3,3,3,3,3,3,3},
      {3,2,1,1,1,2,1,1,1,1,1,2,3,3,3,3,3,3,3},
      {3,2,2,1,1,2,1,1,2,2,2,2,3,3,3,3,3,3,3},
      {3,3,2,1,1,1,1,1,1,2,3,3,3,3,3,3,3,3,3},
      {3,1,2,1,1,1,1,1,1,2,3,3,3,3,3,3,3,3,3},
      {3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3},
      {3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3}
    },
    collisions = {
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.t,b.t,b.t,b.t,b.t,b.t,b.t,b.t,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.t,b.f,b.f,b.f,b.t,b.f,b.f,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.t,b.t,b.t,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.t,b.t,b.f,b.f,b.t,b.f,b.t,b.t,b.t,b.t,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.t,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.t,b.f,b.t,b.f,b.t,b.f,b.t,b.t,b.t,b.t,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.t,b.t,b.t,b.t,b.t,b.f,b.t,b.f,b.f,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.t,b.f,b.f,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.t,b.t,b.f,b.f,b.t,b.f,b.t,b.t,b.t,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.t,b.f,b.f,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.t,b.f,b.f,b.f,b.t,b.f,b.f,b.t,b.f,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.t,b.t,b.f,b.f,b.t,b.f,b.f,b.t,b.f,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.t,b.f,b.f,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.t,b.t,b.f,b.f,b.t,b.f,b.f,b.t,b.t,b.t,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.t,b.t,b.t,b.t,b.t,b.t,b.t,b.t,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f}
    }
  },
  entities = {
    tiles = {
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
    },
    colors = {
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
    },
    collisions = {
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f},
      {b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f,b.f}
    }
  },
  palette = {
    {255,255,255},
    {179,89,0},
    {0,255,0},
    {255,215,0},
    {255,0,0},
    {0,0,255}
  }
}

function drawMap(map_name, colors)
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