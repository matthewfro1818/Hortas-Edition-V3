function onCreate()
    makeLuaSprite('manbieBGS/cacophnos_bg_thing', 'manbieBGS/cacophnos_bg_thing', -550, -150);
    scaleObject('manbieBGS/cacophnos_bg_thing', 1.5, 1.6);
	setScrollFactor('manbieBGS/cacophnos_bg_thing', 0, 0)

	makeLuaSprite('platform2', 'demiurgePlatform2', 245, 2040);
	setScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 0.3, 0.3);
	doTweenColor('platform2', 'platform2', '0096FF' , 0.1, 'linear');

    addLuaSprite('manbieBGS/cacophnos_bg_thing', false);
    addLuaSprite('platform2', false);
    end
	
local shadname = "stridentCrisisWavy1"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy1")
		setSpriteShader('manbieBGS/cacophnos_bg_thing', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('manbieBGS/cacophnos_bg_thing', 'uWaveAmplitude', 0.1)
	setShaderFloat('manbieBGS/cacophnos_bg_thing', 'uFrequency', 5)
	setShaderFloat('manbieBGS/cacophnos_bg_thing', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('manbieBGS/cacophnos_bg_thing', 'uTime', os.clock())
	end