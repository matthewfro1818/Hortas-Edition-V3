local shake = 0
local defaultstrumpos = 0
local beat = 0
local epicpart = false
local notex1 = 590
local notex2 = -400
function onCreate()
    makeLuaSprite('epicflash','',0,0)
    makeGraphic('epicflash',3000,3000,'FFFFFF')
    setObjectCamera('epicflash','other')
    addLuaSprite('epicflash',true)
    setProperty('epicflash.alpha', 0)
    makeLuaSprite('noterealpos','',590,-400)
    setObjectCamera('noterealpos','other')
    addLuaSprite('noterealpos',true)
    setProperty('noterealpos.alpha', 0)
end
function onUpdate()
    songPos = getSongPosition()
    clearEffects('HUD')
    clearEffects('game')
    clearEffects('dad')
end
function onBeatHit()
    local currentBeat = math.floor((songPos/1000)*(bpm/60))
    beat = 1
    if currentBeat == 8 then
        defaultstrumpos = 60
        if downscroll then
            defaultstrumpos = 600
        end
    end
    if currentBeat == 32 then
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes',i,'alpha',1)
            setPropertyFromGroup('strumLineNotes',i,'y',750)
            if downscroll then
                setPropertyFromGroup('strumLineNotes',i,'y',-130)
            end
            noteTweenY('epic-' .. i,i,defaultstrumpos,crochet*0.031,'linear')
        end
        doTweenY('epic1','timeBar',-50,crochet*0.008,'sineIn')
        doTweenY('epic2','timeTxt',-50,crochet*0.008,'sineIn')
        doTweenY('epic3','healthBar',850,crochet*0.008,'sineIn')
        doTweenY('epic4','iconP1',850,crochet*0.008,'sineIn')
        doTweenY('epic5','iconP2',850,crochet*0.008,'sineIn')
        doTweenY('epic6','scoreTxt',850,crochet*0.008,'sineIn')
        if downscroll then
            doTweenY('epic1','timeBar',850,crochet*0.008,'sineIn')
            doTweenY('epic2','timeTxt',850,crochet*0.008,'sineIn')
            doTweenY('epic3','healthBar',-50,crochet*0.008,'sineIn')
            doTweenY('epic4','iconP1',-250,crochet*0.008,'sineIn')
            doTweenY('epic5','iconP2',-250,crochet*0.008,'sineIn')
            doTweenY('epic6','scoreTxt',-50,crochet*0.008,'sineIn')
        end
    end
    if currentBeat == 63 then
        for i = 4,7 do
            noteTweenX('WH-' .. i,i,-20+i*110,crochet*0.00025,'linear')
        end
        for i = 0,3 do
            noteTweenX('WH-' .. i,i,-150,crochet*0.00025,'linear')
        end
        
    end
    if currentBeat == 128 or currentBeat == 320 then
        for i = 4,7 do
            noteTweenAlpha('bye' .. i,i,0,crochet*0.002,'linear')
        end
    end
    if currentBeat == 158 or currentBeat == 478 then
        for i = 4,7 do
            noteTweenAlpha('SUPRISE' .. i,i,1,crochet*0.002,'linear')
        end
    end
    if currentBeat == 128 or currentBeat == 288 or currentBeat == 448 then
        epicpart = true
        doFlash(1,1,'FFFFFF')
        doTweenX('back1','noterealpos',870,crochet*0.001,'expoOut')
        doTweenY('back2','noterealpos',310,crochet*0.001,'expoOut')
    end
    if currentBeat == 256 or currentBeat == 320 or currentBeat == 576 then
        epicpart = false
        doTweenX('back1','noterealpos',590,crochet*0.001,'expoOut')
        doTweenY('back2','noterealpos',-400,crochet*0.001,'expoOut')
    end
    if currentBeat == 576 then
    --[[    makeLuaSprite('hideother','',-700,0)
        makeGraphic('hideother',3000,3000,'000000')
        setObjectCamera('hideother','game')
        addLuaSprite('hideother',true)
        setProperty('hideother.alpha', 0)
        setObjectOrder('hideother', 4)
        doTweenAlpha('byemorbius','hideother',1,crochet*0.048,'linear')]]
        for i = 1, 900 do
         debugPrint('NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO. NO.')
        end
    end
    if currentBeat == 384 then
        doTweenZoom('epiczoom3','camGame',getProperty('camGame.zoom')*1.2,crochet*0.0635,'sineOut')
    end
    if epicpart then
        setProperty('camHUD.zoom',1.1)
        setProperty('camGame.zoom',getProperty('camGame.zoom')*1.05)
        doTweenZoom('epiczoom1','camHUD',1,crochet*0.0005,'sineOut')
        doTweenZoom('epiczoom2','camGame',getProperty('camGame.zoom')*(1/1.05),crochet*0.0005,'sineOut')
    end
end
function onUpdatePost()
    shake = shake*0.85
    beat = beat*0.85
    notex1 = getProperty('noterealpos.x')
    notex2 = getProperty('noterealpos.y')
    notey = getProperty('noterealpos.angle')
    local currentBeat = (songPos/1000)*(bpm/60)
    addChromaticAbberationEffect('HUD',shake+0.002)
    addChromaticAbberationEffect('game',shake+0.002)
    addGrainEffect('HUD', 5, 2, true)
    addGrainEffect('dad', 5, 2, true)
    if currentBeat < 8 then
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes',i,'alpha',0)
        end
    end
    if currentBeat > 64 then
        if epicpart then
            val1 = math.cos(currentBeat*math.pi)*beat*2
            for i = 4,7 do
                setPropertyFromGroup('strumLineNotes',i,'x',notex1+(i-5.5)*(110*math.cos(val1*math.pi/18)))
                setPropertyFromGroup('strumLineNotes',i,'y',defaultstrumpos+(i-5.5)*(110*math.sin(val1*math.pi/18)))
                setPropertyFromGroup('strumLineNotes',i,'direction',90+val1*10)
                setPropertyFromGroup('strumLineNotes',i,'angle',val1*10)
            end
        else
            for i = 4,7 do
                setPropertyFromGroup('strumLineNotes',i,'x',notex1+(i-5.5)*110)
                setPropertyFromGroup('strumLineNotes',i,'y',defaultstrumpos)
                setPropertyFromGroup('strumLineNotes',i,'direction',90)
                setPropertyFromGroup('strumLineNotes',i,'angle',0)
            end
        end
        for i = 0,3 do
            setPropertyFromGroup('strumLineNotes',i,'x',notex2+(i-1.5)*110)
            setPropertyFromGroup('strumLineNotes',i,'y',defaultstrumpos)
        end
    end
end
function opponentNoteHit()
    shake = 0.01
end
function doFlash(brightness,length,color) --self explanatory
    setProperty('epicflash.alpha',brightness)
    setProperty('epicflash.color',getColorFromHex(color))
    doTweenAlpha('epicparts','epicflash',0,length,'sineOut')
end