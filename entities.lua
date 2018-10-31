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
    name = "Laundry Detergent"
  },
  {
    x=3,
    y=14,
    tile=2,
    tileColor=6,
    color = {r=0,b=0,g=255},
    alive=true,
    notification="Blue Idol found,\nPress E to interact",
    name = "Lamp"
  }
}

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