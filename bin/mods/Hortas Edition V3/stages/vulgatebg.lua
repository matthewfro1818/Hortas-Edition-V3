function onCreate()
    makeLuaSprite('vulul', 'vulul', -550, -150);
    setScrollFactor('vulul', 1, 0);

    makeLuaSprite('platform2', 'demiurgePlatform2', 245, 2050);
	setScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 0.3, 0.3);
	doTweenColor('platform2', 'platform2', '006400' , 0.1, 'linear');

    addLuaSprite('vulul');
    addLuaSprite('platform2', false);
 
doTweenColor('bf', 'boyfriend', 'A0A0A0' , 0.1, 'linear');
    end


local shadname = "stridentCrisisWavy4"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy4")
		setSpriteShader('vulul', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('vulul', 'uWaveAmplitude', 0.1)
	setShaderFloat('vulul', 'uFrequency', 5)
	setShaderFloat('vulul', 'uSpeed', 2.25)
	end

	function onUpdatePost(elapsed)
	setShaderFloat('vulul', 'uTime', os.clock())
	end