print 'Loading level'
local l = level

background = Level.loadObject( 'StationTest'  )
background:position( 0, 800 )
background:layer( 10 )
background:visible( true )

sec1 = Level.loadObject( 'Walk_Cycle' )
sec1:position( 200, 600 )
sec1:layer( 2 )
sec1:visible( true )
sec1:frame( 4 )

sec2 = Level.loadObject( 'Walk_Cycle' )
sec2:position( 800, 400 )
sec2:layer( 2 )
sec2:visible( true )
sec2:frame( 8 )

flag = true
button = Level.loadObject( 'Exit_Game' );
button:layer( 2 )
button:visible( true )
button:position( 10, 10 )
button:onClick( 'flag = not flag; sec1:visible( flag ); print( flag )' )

button2 = Level.loadObject( 'Load_Game' );
button2:layer( 2 )
button2:visible( true )
button2:position( 10, 110 )
button2:onClick( 'sec2:frame( 10 )' );

--[ Last argument enables lua garbage collection for sound object ]--
s1 = Sound.new( 'wave1.wav', true )
s2 = Sound.new( 'wave2.wav', true )

At( 1, function ()
  Sound.play( 'wave3.wav' )
end )

At( 2, function ()
  s2:play()
end )

At( 3, function ()
  s1:play()
  At( 1, walk_func )
  At(1, rotate_func)
end )

local x = 800
walk_func = function ()
  x = x - 5
  if( x < -200 ) then
    x = 1280
  end

  sec2:position( x, 400 )

  At( 0.033333, walk_func )
end

-- [Rotation function commented out cause u dont have rotation yet john :)] --

--[[
local r = 0
rotate_func = function()
	r = r + 0.1
	if (r > 6.27) then
		r = 0
	end

	sec1:rotation(r)

	At( 0.033333, rotate_func)
end
--]]
