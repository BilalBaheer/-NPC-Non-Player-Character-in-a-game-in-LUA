-- NPC behavior logic
local NPC = {
    state = "idle",  -- initial state
    patrolPoints = { {x = 0, y = 0}, {x = 10, y = 10}, {x = 20, y = 0} },  -- example patrol points
    currentPoint = 1  -- index for the patrol point
}

-- Function to move NPC to the next patrol point
function NPC:moveToNextPoint()
    local nextPoint = self.patrolPoints[self.currentPoint]
    print("Moving to patrol point: (" .. nextPoint.x .. ", " .. nextPoint.y .. ")")

    -- Update the current patrol point to the next one, wrap around if at the end
    self.currentPoint = self.currentPoint % #self.patrolPoints + 1
end

-- Function to perform the "idle" behavior
function NPC:idle()
    print("NPC is idle.")
end

-- Function to randomly choose the next state (idle or patrolling)
function NPC:chooseState()
    local choice = math.random(1, 2)  -- Randomly pick between 1 and 2
    if choice == 1 then
        self.state = "idle"
    else
        self.state = "patrol"
    end
end

-- Main behavior loop
function NPC:performBehavior()
    while true do
        self:chooseState()  -- Randomly choose state
        if self.state == "idle" then
            self:idle()  -- NPC is idle
        elseif self.state == "patrol" then
            self:moveToNextPoint()  -- NPC patrols to the next point
        end

        -- Add a delay to simulate behavior over time (e.g., 2 seconds)
        os.execute("sleep 2")
    end
end

-- Start the NPC behavior
NPC:performBehavior()
