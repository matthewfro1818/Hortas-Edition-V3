function onCreate()
    makeLuaSprite('thoretikal', 'thoretikal', -1000, 0);
    setScrollFactor('thoretikal', 0.3, 0.3);
    scaleObject('thoretikal', 1.6, 1.6);

    addLuaSprite('thoretikal');
    end


local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy")
		setSpriteShader('thoretikal', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('thoretikal', 'uWaveAmplitude', 0.1)
	setShaderFloat('thoretikal', 'uFrequency', 5)
	setShaderFloat('thoretikal', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('thoretikal', 'uTime', os.clock())
	end