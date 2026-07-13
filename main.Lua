-- Number Guess Game
-- Author: Asaf

math.randomseed(os.time())

local secretNumber = math.random(1, 100)
local attempts = 0

print("=== Number Guess Game ===")
print("I have chosen a number between 1 and 100!")

while true do
    io.write("Enter your guess: ")
    local guess = tonumber(io.read())

    if guess == nil then
        print("Please enter a valid number.")
    else
        attempts = attempts + 1

        if guess < secretNumber then
            print("Try a higher number.")
        elseif guess > secretNumber then
            print("Try a lower number.")
        else
            print("Congratulations!")
            print("You guessed the correct number: " .. secretNumber)
            print("Total attempts: " .. attempts)
            break
        end
    end
end