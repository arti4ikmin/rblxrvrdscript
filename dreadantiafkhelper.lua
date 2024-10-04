local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local camera = workspace.CurrentCamera
local rootPart = character:WaitForChild("HumanoidRootPart")

local function movePlayerAndCamera()
    local moveVector = Vector3.new(0, 0, 0)

    moveVector = Vector3.new(0, 0, -1)
    humanoid:Move(moveVector, true)
    wait(0.1)

    moveVector = Vector3.new(-1, 0, 0)
    humanoid:Move(moveVector, true)
    wait(0.1)

    moveVector = Vector3.new(0, 0, 1)
    humanoid:Move(moveVector, true)
    wait(0.1)

    -- Move the player right (D)
    moveVector = Vector3.new(1, 0, 0)
    humanoid:Move(moveVector, true)
    wait(0.1)

    humanoid:Move(Vector3.new(0, 0, 0), true)

    local cameraOffset = CFrame.new(0, 5, 10)
    camera.CFrame = rootPart.CFrame * cameraOffset * CFrame.Angles(0, math.rad(45), 0)
end

--hmm while true allowed? :shrug:
while true do
    movePlayerAndCamera()
    wait(1)
end
