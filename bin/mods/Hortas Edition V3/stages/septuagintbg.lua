function onCreate()
    makeLuaSprite('septuagintbg', 'septuagintbg', -750, 1500);

    makeLuaSprite('platform2', 'demiurgePlatform2', 245, 2050);
	setScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 0.3, 0.3);
	doTweenColor('platform2', 'platform2', '32CD32' , 0.1, 'linear');

    addLuaSprite('septuagintbg');
    addLuaSprite('platform2', false);
    end
	
	
local shadname = "stridentCrisisWavy3"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy3")
		setSpriteShader('septuagintbg', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('septuagintbg', 'uWaveAmplitude', 0.1)
	setShaderFloat('septuagintbg', 'uFrequency', 5)
	setShaderFloat('septuagintbg', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('septuagintbg', 'uTime', os.clock())
	end