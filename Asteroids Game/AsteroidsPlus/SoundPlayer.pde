/* This source code is copyrighted materials owned by the UT system and cannot be placed 
into any public site or public GitHub repository. Placing this material, or any material 
derived from it, in a publically accessible site or repository is facilitating cheating 
and subjects the student to penalities as defined by the UT code of ethics. */

import processing.sound.*;

class SoundPlayer 
{
  SoundFile boomPlayer, popPlayer, gameOverPlayer;
  SoundFile explosionLargeAsteroid, explosionShip, explosionSmallAsteroid;
  SoundFile ohYea, missileLaunch;
  SoundFile bgMusic;
  
  SoundPlayer(PApplet app, float globalVolume) 
  {
    boomPlayer = new SoundFile(app, "newExplode.mp3"); 
    boomPlayer.amp(globalVolume);
    
    gameOverPlayer = new SoundFile(app, "gameOver.mp3"); 
    gameOverPlayer.amp(globalVolume);
    
    popPlayer = new SoundFile(app, "Blop.mp3");
    popPlayer.amp(globalVolume);
    
    explosionLargeAsteroid = new SoundFile(app, "bigAsteroidBoom.mp3");
    explosionLargeAsteroid.amp(globalVolume);
    
    explosionSmallAsteroid = new SoundFile(app, "tinyAsteroidBoom.mp3");
    explosionSmallAsteroid.amp(globalVolume);
    
    explosionShip = new SoundFile(app, "shipExplode.mp3");
    explosionShip.amp(globalVolume);
    
    ohYea = new SoundFile(app, "Win.mp3");
    ohYea.amp(globalVolume);
    
    missileLaunch = new SoundFile(app, "missileLaunch1.mp3");
    missileLaunch.amp(globalVolume);
    
    /*
    Sound File: "space-ranger-moire-main-version-03-04-10814.mp3"
    Created by Moire
    Source: Music from #Uppbeat (free for Creators!):
            https://uppbeat.io/t/moire/space-ranger
    License code: TTQ3OJOSPIQFV6MJ
    */
    bgMusic = new SoundFile(app, "space-ranger-moire-main-version-03-04-10814.mp3");
    /* bgMusic.amp(0); */
    
  }

  void playExplosion() 
  {
    boomPlayer.play();
  }

  void playPop() 
  {
    popPlayer.play();
  }

  void playGameOver() 
  {
    gameOverPlayer.play();
  }
  
  void playExplosionLargeAsteroid() 
  {
    explosionLargeAsteroid.play();
  }

  void playExplosionSmallAsteroid() 
  {
    explosionSmallAsteroid.play();
  }
  
  void playExplosionShip() 
  {
    explosionShip.play();
  }

  void playOhYea() 
  {
    ohYea.play();
  }

  void playMissileLaunch() 
  {
    missileLaunch.play();
  }
  
  void playBgMusic()
  {
    bgMusic.loop();
    bgMusic.amp(0.3);
  }
  
  void stopBgMusic()
  {
    bgMusic.stop();
  }
}
