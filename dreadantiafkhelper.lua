local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function movePlayer(direction)
    local moveVector = Vector3.new(0, 0, 0)

    if direction == "W" then
        moveVector = Vector3.new(0, 0, -1)
    elseif direction == "A" then
        moveVector = Vector3.new(-1, 0, 0)
    elseif direction == "S" then
        moveVector = Vector3.new(0, 0, 1)
    elseif direction == "D" then
        moveVector = Vector3.new(1, 0, 0)
    end

    humanoid:Move(moveVector, true)

    wait(0.1)

    humanoid:Move(Vector3.new(0, 0, 0), true)
end

--hmm while true allowed? :shrug:
while true do
    movePlayer("W")
    wait(0.1) 

    movePlayer("A")
    wait(0.1)

    movePlayer("S")
    wait(0.1)

    movePlayer("D")
    wait(0.1)
end
