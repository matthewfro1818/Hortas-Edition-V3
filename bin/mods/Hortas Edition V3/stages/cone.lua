function onCreate()
	-- background shit
	makeLuaSprite('cone', 'cone', -1800, -300);
	setScrollFactor('cone', 0.3, 0.3);

	makeLuaSprite('platform2', 'platform', 700, 350);
	setScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 0.3, 0.3);
	doTweenColor('platform2', 'platform2', '301934' , 0.1, 'linear');

	addLuaSprite('cone', false);
	addLuaSprite('platform2', false);
end

local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy")
		setSpriteShader('cone', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('cone', 'uWaveAmplitude', 0.1)
	setShaderFloat('cone', 'uFrequency', 5)
	setShaderFloat('cone', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('cone', 'uTime', os.clock())
	end