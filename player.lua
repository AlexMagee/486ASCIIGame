player = {
  x=3,
  y=7,
  tile=1,
  tileColor=1
}

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
        inventory[#inventory+1]=entities[i]
        break
      end
    end
  end
end
 
function playerMove(key)
  if(key == "up" and player.y-1 > 0 and not realmap.landscape.collisions[player.y-1][player.x]) then
    player.y = player.y-1
  end
  if(key == "down" and player.y+1 <= #realmap.landscape.tiles and not realmap.landscape.collisions[player.y+1][player.x]) then
    player.y = player.y+1
  end
  if(key == "right" and player.x+1<=#realmap.landscape.tiles[1] and not realmap.landscape.collisions[player.y][player.x+1]) then
    player.x = player.x+1
  end
  if(key == "left" and player.x-1>0 and not realmap.landscape.collisions[player.y][player.x-1]) then
    player.x = player.x-1
  end
  checkInteract(player.y,player.x)
  if(key == "e") then
    interact(player.x,player.y)
  end
  draw_entities()
end