function onCreatePost() --script made by impostor, credit me now or i will do an unfunny
    makeLuaText("message", "", 5000, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", ""..songName.." - D&B Hortas Edition V3 ", 5000, 0, 0)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 700)
    end
end