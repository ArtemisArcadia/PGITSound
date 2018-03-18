class Sound {
  SoundFile file;
  float fadePoint;
  float playhead;
  float startingTime;
  float duration;
  boolean isPlaying;
  float amp;
  // int songNo;

  Sound(SoundFile _file, float _fadePoint, float _amp) {
    this.file = _file;
    this.fadePoint = _fadePoint;
    this.playhead = 0;
    this. startingTime = 0;
    this.duration = _file.duration();
    this.isPlaying = false;
    this.amp = _amp;
  }


  void volume() {
    if (isPlaying) {
      switch (key) {
      case '1':
        amp -= 0.1;
        break;

      case '2':
        amp += 0.1;
        break;
      }
    }
  }

  void fadeOutIn() {

    Sound[] a;
    int no;
    boolean decay;
    

    while (isPlaying) {

      if (playhead <= file.duration()) {

        if (playhead > file.duration() - fadePoint) {
          if (file.amp() <= 0f) {
            file.amp() = 0f;
            no += 1;
            for(int i = 0; i < 10; i ++){
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

    Sound[] a;

    if (a[0] == null)
    {
      println("LIST IS EMPTY");
      return;
    }

    if (a[0] != null) {
      for (int i = 0; i < a.length; i++) {
        a[i].file.play();
        isPlaying = true;

        for (int s = 0; s <= a[i].file.duration(); s++)
        {
          if (isPlaying == true) {
            playhead = (millis() - startingTime)/1000.0;
          }
        }
      }
    }
  }
}

void stopSong()
{
}