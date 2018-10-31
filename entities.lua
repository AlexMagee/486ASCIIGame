entities = {
  {
    x=8,
    y=4,
    tile=2,
    tileColor=5,
    color = {r=0,g=0,b=255},
    alive=true,
    notification="Hair Dryer found,\nPress E to pick up",
    name = "Hair Dryer",
    interactType = 2,
    tags = {"Appliance"}
  },
  {
    x=10,
    y=6,
    tile=0,
    tileColor=4,
    color = {r=0,g=0,b=255},
    alive=true,
    notification="Laundry Detergent,\nPress E to take some",
    name = "Laundry Detergent",
    interactType = 1,
    tags = {"Cleaning Supply"}
  },
  {
    x=3,
    y=14,
    tile=2,
    tileColor=6,
    color = {r=0,b=0,g=255},
    alive=true,
    notification="Toaster,\nPress E to pick up",
    name = "Toaster",
    interactType = 2,
    tags = {"Appliance"}
  },
  {
    x=11,
    y=3,
    tile=0,
    tileColor=6,
    color = {r=0,b=0,g=255},
    alive=true,
    notification="Bath tub,\nPress E to drop Appliance",
    name = "Bathtub",
    interactType = 3,
    tags = {}
  },
  {
    x=11,
    y=4,
    tile=0,
    tileColor=6,
    color = {r=0,b=0,g=255},
    alive=true,
    notification="Bath tub,\nPress E to drop Appliance",
    name = "Toaster",
    interactType = 3,
    tags = {}
  }
}

function entityInteract(i)
  if(entities[i].interactType == 0) then
    entities[i].alive = false
    currency = currency + 500
    notification = "Arrow keys to move"
    inventory[#inventory+1]=entities[i]
  elseif(entities[i].interactType == 1) then
    notification = "Arrow keys to move"
    inventory[#inventory+1]=entities[i]
  elseif(entities[i].interactType == 2) then
    entities[i].alive = false
    notification = "Arrow keys to move"
    inventory[#inventory+1]=entities[i]
  elseif(entities[i].interactType == 3) then
    for j=1,#inventory do
      for k=1,#inventory[j].tags do
        if(inventory[j].tags[k] == "Appliance") then
          player.dead = true
          table.remove(inventory, j)
          notification = "You Dead"
          return
        end
      end
    end
    notification = "No Appliance in Inventory"
  end
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