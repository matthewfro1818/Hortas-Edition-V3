local windowX = 0;
local windowY = 0;


function onCreate()
    setProperty('camGame.zoom', 3)
    doTweenZoom('begin', 'camGame', '0.9', 5, 'quadOut')
    addChromaticAbberationEffect('camgame')   
    addChromaticAbberationEffect('camhud')
    doTweenColor('timeTxt', 'timeTxt', 'FF0000', 0.1, 'linear'); 

    setProperty('skipCountdown', true)
	setProperty('gfGroup.visible', false)
	setTextFont('scoreTxt', 'vcr')
	setTextFont('botplayTxt', 'vcr')
	setTextFont('songText', 'vcr')
	setTextFont('timeTxt', 'vcr')
	setTextSize('songText', 27);
	setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
    setProperty("doof.visible", false)
    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)
	setProperty('scoreTxt.visible', false)
    setProperty('songText.visible', false)

    setProperty('timeTxt.y', 680)
	setProperty('timeTxt.x', 1045)

    makeLuaText('sus', '', 0, 450, 10)
	setTextSize('sus', '50')
    addLuaText('sus')	
    setTextAlignment('sus', 'left')
    setTextString('sus', 'you are fucked')
	setTextColor('sus', 'FF0000')
	setTextFont('sus', 'vcr')
end

  function opponentNoteHit()
    windowShake()
  end

function windowShake()
    windowX = getPropertyFromClass('openfl.Lib', 'application.window.x')
    windowY = getPropertyFromClass('openfl.Lib', 'application.window.y')
    setPropertyFromClass('openfl.Lib','application.window.x',windowX + math.random(-3,3))
    setPropertyFromClass('openfl.Lib','application.window.y',windowY + math.random(-3,3))
 end

function onUpdate(elapsed)
	local speed = 200

    setPropertyFromClass("openfl.Lib", "application.window.title", "You're done.")

    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
    os.execute("start https://imgur.com/03XkZdA.png")
    os.exit()
    setProperty('camHUD.alpha', 0);
    end
end

function onUpdatePost(elapsed)

    setProperty("timeTxt.text", "?:?")
end

function onEndSong()
    restartSong(true)
    return Function_Stop
end