-- So I decided to rewrite VirtSH in lua.
-- Soo Lets get this started.
-- Its gonna have everything upset the search.
-- No semicolons yay!

require("ancsiisay")
require("weather")
io.write("NOTICE: This is a lighterweight version of VirtSH with just the useful features. It only has 1 game/easter egg.\n\n\n")


io.write("\n")
io.write("     Hello!\n")
io.write("   /\n")
io.write("^ ^\n")
io.write("\n")
local function help()
    print("Commands: weather, ancsii, exit/bye, shell, calc")
end

while true do
    io.write("VirtSH $ ")
    ---@type string
    local input = io.read()

    if input == "weather" then
        weather()
    end

    if input == "ancsii" then
        anscii()
    end

    if input == "exit" or input == "bye" then
        io.write("\n")
        io.write("     Bye, user!\n")
        io.write("   /\n")
        io.write("^ ^\n")
        io.write("\n")
        break
    end

    if input == "shell" then
        ---@type string
        local shell = io.read()
        os.execute(shell)
    end

    if input == "calc" then
        io.write("Choose a option: 1(+), 2(-), 3(*), 4(/), 5(%)")
        ---@type integer
        local choice = io.read()
        if  choice == 1 then
            ---@type number
            local num1 = io.read()
            ---@type number
            local num2 = io.read()
            print(num1 + num2)
        end

        if choice == 2 then
            ---@type number
            local num1 = io.read()
            ---@type number
            local num2 = io.read()
            print(num1 - num2)
        end

        if choice == 3 then
            ---@type number
            local num1 = io.read()
            ---@type number
            local num2 = io.read()
            print(num1 * num2)
        end

        if choice == 4 then
            ---@type number
            local num1 = io.read()
            ---@type number
            local num2 = io.read()
            print(num1 / num2)
        end

        if choice == 5 then
            ---@type integer
            local num1 = io.read()
            ---@type integer
            local num2 = io.read()
            print(num1 % num2)
        end
    end
end

