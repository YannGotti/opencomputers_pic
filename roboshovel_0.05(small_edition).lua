-- davial Robot-shovel 0.05. (alpha) --

local r = require ("robot")
  
  print (" Input length ")
  len = io.read()
  print (" Input width ")
  wid = io.read()
  os.sleep(3)
  print (" Input heigth ")
  hei = io.read()

function Dig()                                     -- самокопание(или - само копание)
  while r.detect () do r.swing()
    os.sleep(0.6)
  end
    r.forward()
  while r.detectUp () do r.swingUp()
    os.sleep(0.6)
  end
  while r.detectDown () do r.swingDown()
  end
end

function RightHand()                              -- правый ход
  Dig()
  r.turnRight()
    for j = 2, wid-1 do
      Dig()
    end
  Dig()
  r.turnLeft()
end

function LeftHand()                               -- левый ход
  Dig()
  r.turnLeft()
    for j = 2, wid-1 do    
      Dig()
    end
   Dig()
   r.turnRight()
end

for i = 1, len do
  if i%2~=0 then RightHand()
            else LeftHand()
  end
end