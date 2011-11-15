print 'Loading level'

local l = level

background = Level.loadObject( 'Main_Menu'  )
background:layer( 10 )
background:visible( true )


overlay = Level.loadObject( 'Overlay' )
overlay:position( 384, 556 )
overlay:layer( 9 )
overlay:visible( true )

--[ Buttons ]--
new_game = Level.loadObject( 'New_Game' )
new_game:position( 520, 480 )
new_game:layer( 2 )
new_game:visible( true )
new_game:onClick( 'LoadLevel( 1 )' )

load_game = Level.loadObject( 'Load_Game' )
load_game:position( 520, 380 )
load_game:layer( 2 )
load_game:visible( true )
load_game:onClick( 'print( "MEEEEEEEH" )' )

function test()
  print( "test" )
end

options = Level.loadObject( 'Options' )
options:position( 520, 280 )
options:layer( 2 )
options:visible( true )
options:onMouseOver( "test()", 1 )

exit_game = Level.loadObject( 'Exit_Game' )
exit_game:position( 520, 180 )
exit_game:layer( 2 )
exit_game:visible( true )

