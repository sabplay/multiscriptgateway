local gameLinks = {
    [5827078246] = "https://raw.githubusercontent.com/5Picklebarry/Scripts/main/Pickle-Hub/Coins-Hero-Simulator.lua",
    [12400504665] = "https://raw.githubusercontent.com/5Picklebarry/Scripts/main/Pickle-Hub/Hood-Arena.lua",
    [662417684] = "https://raw.githubusercontent.com/5Picklebarry/Scripts/main/Pickle-Hub/Lucky-Blocks-Battlegrounds.lua",
    [10704789056] = "https://raw.githubusercontent.com/5Picklebarry/Scripts/main/Pickle-Hub/Drive-World.lua",
    [11746859781] = "https://raw.githubusercontent.com/5Picklebarry/Scripts/main/Pickle-Hub/Bubble-Gum-Clicker.lua",
    [2248408710] = "https://raw.githubusercontent.com/5Picklebarry/Scripts/main/Pickle-Hub/Destruction-Simulator",
    [5938036553] = "https://raw.githubusercontent.com/sabplay/multiscript/main/FRONTLINES.lua",
    [286090429] = 'https://raw.githubusercontent.com/sabplay/multiscript/main/arsenal.lua',
    [12334109280] = "https://raw.githubusercontent.com/sabplay/multiscriptgateway/main/g%26bp.lua",
    [6516141723] = "https://raw.githubusercontent.com/sabplay/multiscriptgateway/main/doors.lua",
    [122421227] = "https://raw.githubusercontent.com/sabplay/multiscriptgateway/main/madcitych2.lua",
    [292439477] = "https://raw.githubusercontent.com/sabplay/multiscriptgateway/main/phantom%20forces",
}

if gameLinks[game.PlaceId] ~= nil then
    loadstring(game:HttpGet(gameLinks[game.PlaceId]))()
else
    warn("Pickle Hub is not supported in this game.")
end
