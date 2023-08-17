function onCreate()
	-- background shit
	makeLuaSprite('halo', 'halo', -2000, -1000);
	setScrollFactor('halo', 0.6, 0.6);

	makeLuaSprite('uphevel', 'unfair', -2000, -1000);
	setScrollFactor('uphevel', 0.6, 0.6);
	doTweenAlpha('ssadasd', 'uphevel', 0, 0.1, 'linear');

	makeLuaSprite('platform1', 'platform', -300, 320);
	setScrollFactor('platform1', 1, 1);
	scaleObject('platform1', 0.215, 0.215);
	doTweenColor('platform1', 'platform1', '000080' , 0.1, 'linear');

	makeLuaSprite('platform2', 'platform', 250, 305);
	setScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 0.3, 0.3);
	doTweenColor('platform2', 'platform2', '000080' , 0.1, 'linear');

	addLuaSprite('halo', false);
	addLuaSprite('platform1', false);
	addLuaSprite('platform2', false);
	end
	
local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy")
		setSpriteShader('halo', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('halo', 'uWaveAmplitude', 0.1)
	setShaderFloat('halo', 'uFrequency', 5)
	setShaderFloat('halo', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('halo', 'uTime', os.clock())
	end