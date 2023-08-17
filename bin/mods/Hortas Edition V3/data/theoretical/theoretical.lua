local offset1 = 0
local offset2 = 0
local offset3 = 0
local s1 = 1
local s2 = 0.5
local notex1 = 590
local notex2 = -400


function onCreate()
    makeLuaSprite('offsettween','',0,0)
    setProperty('offsettween.alpha',1)
    makeLuaSprite('epicflash','',0,0)
    makeGraphic('epicflash',3000,3000,'FFFFFF')
    setObjectCamera('epicflash','other')
    addLuaSprite('epicflash',true)
    setProperty('epicflash.alpha', 1)
    setProperty('epicflash.color',getColorFromHex('000000'))
    doTweenAlpha('intro','epicflash',0,crochet*0.008)
    for i = 4,7 do
        makeLuaSprite('scalecontrol' .. i,'',0.7,0.7)
        setProperty('scalecontrol' .. i .. '.alpha',0)
        addLuaSprite('scalecontrol' .. i,false)
    end
end

function onBeatHit()
    local currentBeat = math.floor((songPos/1000)*(bpm/60))
    if currentBeat == 8 then
        defaultstrumpos = 60
        invertpos = 600
        if downscroll then
            defaultstrumpos = 600
            invertpos = 60
        end
        for i = 4,7 do
            noteTweenAlpha('hi' .. i,i,1,crochet*0.002,'linear')
        end
    end
    if currentBeat == 31 then
        doTweenZoom('HI','camGame',getProperty('camGame.zoom')*1.5,crochet*0.00025,'linear')
        setProperty('camHUD.alpha',0)
    end
    if currentBeat == 32 then
        doFlash(1,crochet*0.001,'FFFFFF')
        setProperty('camHUD.alpha',1)
        makeLuaSprite('filter','',-500,-700)
        makeGraphic('filter',3000,3000,'FFFFFF')
        setObjectCamera('filter','HUD')
        addLuaSprite('filter',true)
        setProperty('filter.alpha', 0.1)
        setBlendMode('filter', 'subtract')
        setObjectOrder('filter', 10)
        setObjectOrder('dad', 9)
        setObjectOrder('boyfriend', 8)
    end
    if currentBeat >= 32 and currentBeat < 64 or currentBeat >= 96 and currentBeat < 128 then
        for i = 14,15 do
            if currentBeat % 16 == i-4 % 16 then
                setProperty('offsettween.angle',150*(i%2-0.5))
                doTweenAngle('EEEEEEEE-AAAAAAAA-butbad','offsettween',0,crochet*0.001,'backIn')
            end
            if currentBeat % 16 == i % 16 then
                setProperty('offsettween.x',9*(i%2-0.5))
                doTweenX('EEEEEEEE-AAAAAAAA','offsettween',0,crochet*0.001,'backIn')
            end
        end
    end
    if currentBeat == 64 or currentBeat == 128 then
        for i = 4,7 do
            setPropertyFromGroup('strumLineNotes',i,'direction',90)
            noteTweenX('AOEO' .. i,i,notex1+(i-5.5)*110,crochet*0.002,'expoOut')
            noteTweenY('EOAO' .. i,i,defaultstrumpos,crochet*0.002,'expoOut')
        end
    end
    if currentBeat >= 80 and currentBeat < 96 or currentBeat >= 144 and currentBeat < 160 then
        for i = 0,1 do
            if currentBeat % 16 == i*8+4 then
                setProperty('offsettween.y',180+i*180)
                setProperty('offsettween.alpha',0.05)
                doTweenAlpha('EEEOOOAAAOOO','offsettween',1,crochet*0.004,'sineOut')
            end
        end
        if currentBeat % 16 == 0 then
            setProperty('offsettween.y',0)
            setProperty('offsettween.alpha',1)
            doTweenAlpha('EEEOOOAAAOOO','offsettween',0.05,crochet*0.004,'sineIn')
            for i = 4,7 do
                noteTweenY('EOAO' .. i,i,invertpos,crochet*0.008,'linear')
            end
        end
        if currentBeat % 16 == 8 then
            setProperty('offsettween.y',180)
            setProperty('offsettween.alpha',1)
            doTweenAlpha('EEEOOOAAAOOO','offsettween',0.05,crochet*0.004,'sineIn')
            for i = 4,7 do
                noteTweenY('EOAO' .. i,i,defaultstrumpos,crochet*0.008,'linear')
            end
        end
    end
    setProperty('filter.color',getColorFromHex('286F06'))
    doTweenColor('filtercolorset','filter','337711',crochet*0.0009,'linear')
end
function onStepHit()
    local currentStep = math.floor((songPos/1000)*(bpm/15))
    if currentStep == 125 then
        doTweenZoom('HI','camGame',getProperty('camGame.zoom'),crochet*0.00075,'linear')
    end
end

function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/60)
    offset1 = getProperty('offsettween.x')
    offset2 = getProperty('offsettween.y')
    offset3 = getProperty('offsettween.angle')
    speed = getProperty('offsettween.alpha')
    triggerEvent('Change Scroll Speed',speed, 0.001)
    s1 = -s1
    if s1 == 1 then
        s2 = -s2
    end
    for i = 0,3 do
        setPropertyFromGroup('strumLineNotes',i,'alpha',0)
    end
    if currentBeat < 8 then
        for i = 4,7 do
            setPropertyFromGroup('strumLineNotes',i,'alpha',0)
        end
    end
    if currentBeat >= 32 and currentBeat < 64 or currentBeat >= 96 and currentBeat < 128 then
        notex1 = 590+math.sin(currentBeat*math.pi/8)*120
        setProperty('offsettween.y',math.cos(currentBeat*math.pi/8)*1.2)
        for i = 4,7 do
            setPropertyFromGroup('strumLineNotes',i,'x',notex1+(i-5.5)*110*math.cos((offset1*(s2+0.5)+offset2)*math.pi/18))
            setPropertyFromGroup('strumLineNotes',i,'y',defaultstrumpos+(i-5.5)*110*math.sin((offset1*(s2+0.5)+offset2)*math.pi/18)+offset3*(s2+0.5))
            setPropertyFromGroup('strumLineNotes',i,'direction',90+(offset1*(s2+0.5)+offset2)*10)
        end
    end
    if currentBeat >= 80 and currentBeat < 96 or currentBeat >= 144 and currentBeat < 160 then
        notex1 = 590+math.sin(currentBeat*math.pi/8)*200
        for i = 4,7 do
            setPropertyFromGroup('strumLineNotes',i,'x',notex1+(i-5.5)*110*math.cos(currentBeat*math.pi/2))
            setPropertyFromGroup('strumLineNotes',i,'direction',90+offset2)
        end
    end
    setProperty('timeBar.alpha',0)
    setProperty('timeTxt.alpha',0)
    setProperty('healthBar.alpha',0)
    setProperty('iconP1.alpha',0)
    setProperty('iconP2.alpha',0)
    setProperty('scoreTxt.alpha',0)
    notesLength = getProperty('notes.length')
    for i1 = 0, notesLength, 1 do
        TN = getPropertyFromGroup('notes',i1,'noteData')
        TNA = getPropertyFromGroup('strumLineNotes',TN+4,'direction')
        setPropertyFromGroup('notes',i1,'angle',-90+TNA)
    end
end

function doFlash(brightness,length,color) --self explanatory
    setProperty('epicflash.alpha',brightness)
    setProperty('epicflash.color',getColorFromHex(color))
    doTweenAlpha('epicparts','epicflash',0,length,'sineOut')
end