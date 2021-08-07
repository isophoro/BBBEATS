package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionableState;

class EndingState extends MusicBeatState
{
    override function create()
    {
        FlxG.sound.playMusic(Paths.music('freakyMenu'));

        var pic:FlxSprite = new FlxSprite(0,0).loadGraphic(Paths.image('shoutout', 'shared'));
        pic.antialiasing = true;
        add(pic);
    }

    override function update(elapsed:Float)
    {
        if(controls.ACCEPT)
            FlxG.switchState(new MainMenuState());
    }
}