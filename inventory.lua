inventory = {}

function buildInventory()
  result = "Inventory:\n"
  for i=1,#inventory do
    if(inventory[i].name) then
      result = result .. inventory[i].name .. "\n"
    end
  end
  inventoryString = result
end

function drawInventory()
  love.graphics.setColor(255,255,255)
  buildInventory()
  love.graphics.print(inventoryString,175,10)
end