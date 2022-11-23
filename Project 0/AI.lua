-- look for y-axis match 

AI = Class{}

function AI:init(paddle_height)

    self.h = (paddle_height / 2)

    self.y = 0
    self.ball = 0
    self.fix = 5

end

function AI:update(ball_y, player_y)

    self.y = player_y
    self.ball = ball_y

end

function AI:move()

    if self.ball > self.y + self.h - self.fix then
        --go down 
        return -1
    elseif self.ball < self.y + self.h + self.fix then
        -- go up
        return 1 

    else 
        --stop
        return 0 
    end

end
