function onCreate()
	makeLuaSprite('healthBarOver', 'healthBarOver', 0, 0)
	setObjectCamera('healthBarOver', 'hud')
	setScrollFactor('healthBarOver', 0.9, 0.9)
	addLuaSprite('healthBarOver', true)

    makeLuaText('song', songName, 0, 0, 675)
    setTextFont('song', 'knuckles-chaotix-nova.ttf')
    setTextSize('song', 18)
    setObjectCamera('song', 'hud')
    screenCenter('song', 'x')
    addLuaText('song')
end

function onCreatePost()
    setProperty('scoreTxt.visible', false)
    setTextFont('scoreTxt', 'knuckles-chaotix-nova.ttf')
    setTextFont('timeTxt', 'knuckles-chaotix-nova.ttf')
    setProperty('healthBarOver.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))
    setProperty('healthBarOver.x', getProperty('healthBar.x') - 4)
    setProperty('healthBarOver.angle', getProperty('healthBar.angle'))
    setProperty('healthBarOver.y', getProperty('healthBar.y') - 4)
    setProperty('healthBarOver.scale.x', getProperty('healthBar.scale.x'))
    setProperty('healthBarOver.scale.y', getProperty('healthBar.scale.y'))
    setProperty('healthBarBG.visible', false)
    setObjectOrder('healthBarOver', 4)
	setObjectOrder('healthBar', 3)
	setObjectOrder('healthBarBG', 2)
end

function onUpdatePost(elapsed)
    setProperty('iconP1.x', 800)
    setProperty('iconP2.x', 300)
end