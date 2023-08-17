local defaultNotePos = {}
local spin = 7 -- how much it moves before going the other direction
 
function onSongStart()
    for i = 0, 7 do
        defaultNotePos[i] = {
            getPropertyFromGroup('strumLineNotes', i, 'x'),
            getPropertyFromGroup('strumLineNotes', i, 'y')
        }
    end
end

function onUpdate(elapsed)
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 444 --How long it will take.
    
    if curStep == 0 then
        setProperty('camHUD.alpha', 0);
    end

    if curStep == 64 then
        setProperty('camHUD.alpha', 0.2);
    end

    if curStep == 80 then
        setProperty('camHUD.alpha', 0.4);
    end

    if curStep == 96 then
        setProperty('camHUD.alpha', 0.6);
    end

    if curStep == 112 then
        setProperty('camHUD.alpha', 0.8);
    end

    if curStep == 128 then
        setProperty('camHUD.alpha', 1);
    end

    if curStep >= 0 and curStep < 384 then
        setProperty("camHUD.angle", (spin * math.sin(songPos)) * 2)
       setProperty("camGame.angle", (spin * math.sin(songPos)) * 2)
    end
    
    if curStep >= 640 and curStep < 764326234643263248324832873258235234234 then
        setProperty("camHUD.angle", (spin * math.sin(songPos)) * 2)
       setProperty("camGame.angle", (spin * math.sin(songPos)) * 2)
    end
    
    if curStep == 1000000000000000 then
        setProperty("camHUD.angle", 0)
        setProperty("camGame.angle", 0)
    end

    if curStep == 384 then
        setProperty("camHUD.angle", 180)
        setProperty("camGame.angle", 180)
    end

    if curStep == 400 then
        setProperty("camHUD.angle", 0)
        setProperty("camGame.angle", 0)
    end

    if curStep == 416 then
        setProperty("camHUD.angle", 180)
        setProperty("camGame.angle", 180)
    end

    if curStep == 432 then
        setProperty("camHUD.angle", 0)
        setProperty("camGame.angle", 0)
    end

    if curStep == 512 then
        setProperty("camHUD.angle", 180)
        setProperty("camGame.angle", 180)
    end

    if curStep == 528 then
        setProperty("camHUD.angle", 0)
        setProperty("camGame.angle", 0)
    end

    if curStep == 544 then
        setProperty("camHUD.angle", 180)
        setProperty("camGame.angle", 180)
    end

    if curStep == 560 then
        setProperty("camHUD.angle", 0)
        setProperty("camGame.angle", 0)
    end

    songPos = getSongPosition()

    local currentBeat = (songPos/5000)*(curBpm/60)

    noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 350 + 2000*math.sin((currentBeat+8*0.15)*math.pi), 3)

    noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 400 + 2500*math.sin((currentBeat+8*0.05)*math.pi), 3)

    noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 450 + 3000*math.sin((currentBeat+8*9.35)*math.pi), 3)

    noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 500 + 3400*math.sin((currentBeat+8*0.85)*math.pi), 3)

    noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 500 - 3500*math.sin((currentBeat+8*0.05)*math.pi), 3)

    noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 450 - 3000*math.sin((currentBeat+8*0.95)*math.pi), 3)

    noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 400 - 2500*math.sin((currentBeat+8*0.01)*math.pi), 3)

    noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 350 - 2100*math.sin((currentBeat+8*0.03)*math.pi), 3)
end