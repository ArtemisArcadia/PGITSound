class Sound {
  SoundFile file;
  //float fadePoint;
  float playhead;
  float startingTime;
  float duration;
  boolean isPlaying;
  float amp;


  Sound(SoundFile _file,/* float _fadePoint,*/ float _amp, int _playhead) {
    this.file = _file;
    //this.fadePoint = _fadePoint;
    this.playhead = _playhead;
    this. startingTime = 0;
    this.duration = _file.duration();
    this.isPlaying = false;
    this.amp = _amp;
    //  this.songNo = _songNo;
  }


  //void volume() {
  //  if (isPlaying) {
  //    switch (key) {
  //    case '1':
  //      amp -= 0.1;
  //      break;

  //    case '2':
  //      amp += 0.1;
  //      break;
  //    }
  //  }
  //}

  void fadeOutIn() {

    boolean decay;


    while (isPlaying) {

      if (playhead <= file.duration()) {

        if (playhead > file.duration() - 3) {
          if (amp <= 0.1) {
            amp = 0f;
            Sound_Loader.songNumber += 1;

            for (int i = 0; i < 10; i ++) {
              amp += 0.1;
            }
          } else {
            amp-= 0.09;
          }

          file.amp(amp);
        }
      }
    }
  }



  void playSoundPlaylist() {
     if (file == null)
      {
        println("LIST IS EMPTY");
        return;
      }

      if (file != null) {
        file.play();
        isPlaying = true;

        //while (isPlaying)
        //{
        //    playhead = (millis() - startingTime)/1000.0;
        //    if (playhead >= file.duration()) {
        //    skipSong();
        //  }
        //  }
          
        }
      }
    
  

void stopSong()
{
  isPlaying = false;
  file.stop();

}

void skipSong() {

  file.stop();
  isPlaying = false;
  songNumber += 1;
  file.play();
  isPlaying = true;
}

void nextSong() {
}


void goBack() {
  if (isPlaying) {
    file.stop();
    Sound_Loader.songNumber+= 1;
    file.play();
  } else {
    Sound_Loader.songNumber += 1;
    file.play();
  }
}
}