function onCreate()
	-- background shit
	makeLuaSprite('labBack', 'labBack', -600, -200);
	setScrollFactor('labBack', 0.9, 0.9);
	
	makeLuaSprite('labFront', 'labFront', -650, 600);
	setScrollFactor('labFront', 0.9, 0.9);
	scaleObject('labFront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('nothing', 'nothing', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('nothing', 'nothing', 1225, -100);
		setScrollFactor('nothing', 0.9, 0.9);
		scaleObject('nothing', 1.1, 1.1);
		setProperty('nothing.flipX', true); --mirror sprite horizontally

		makeLuaSprite('nothing', 'nothing', -500, -300);
		setScrollFactor('nothing', 1.3, 1.3);
		scaleObject('nothing', 0.9, 0.9);
	end

	addLuaSprite('labBack', false);
	addLuaSprite('labFront', false);
	addLuaSprite('nothing', false);
	addLuaSprite('nothing', false);
	addLuaSprite('nothing', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end