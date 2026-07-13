-- ==========================================
-- Number Guess Game
-- Version: 1.0
-- Author: Asaf
-- Language: Lua
-- License: MIT
-- ==========================================

math.randomseed(os.time())

local secretNumber = math.random(1, 100)
local attempts = 0

print("===================================")
print("     Welcome to Number Guess!")
print("===================================")
print("I have chosen a number between 1 and 100.")
print("Can you guess it?")
print("")

while true do
    io.write("Enter your guess: ")

    local guess = tonumber(io.read())

    if guess == nil then
        print("Please enter a valid number.")
    else
        attempts = attempts + 1

        if guess < secretNumber then
            print("Too low! Try a higher number.")
        elseif guess > secretNumber then
            print("Too high! Try a lower number.")
        else
            print("")
            print("===================================")
            print("🎉 Congratulations!")
            print("You guessed the correct number!")
            print("Secret Number : " .. secretNumber)
            print("Total Attempts: " .. attempts)
            print("===================================")

            if attempts <= 5 then
                print("🏆 Excellent! You're a guessing master!")
            elseif attempts <= 10 then
                print("👍 Good job! Nice work!")
            else
                print("😊 You made it! Keep practicing!")
            end

            print("")
            io.write("Would you like to play again? (y/n): ")

            local answer = io.read()

            if answer == "y" or answer == "Y" then
                print("")
                print("Please restart the program to play again.")
            else
                print("")
                print("Thanks for playing!")
            end

            break
        end
    end
end