function onCreate()
    makeLuaSprite('agonysadface', 'agonysadface', -2550, 0);
    scaleObject('agonysadface', 3, 3);
	setScrollFactor('agonysadface', 0.4, 1);

	makeLuaSprite('platform2', 'demiurgePlatform2', 245, 2050);
	setScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 0.3, 0.3);
	doTweenColor('platform2', 'platform2', '0096FF' , 0.1, 'linear');

    addLuaSprite('agonysadface', false);
    addLuaSprite('platform2', false);
end


local shadname = "stridentCrisisWavy2"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy2")
		setSpriteShader('agonysadface', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('agonysadface', 'uWaveAmplitude', 0.1)
	setShaderFloat('agonysadface', 'uFrequency', 5)
	setShaderFloat('agonysadface', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('agonysadface', 'uTime', os.clock())
	end