import processing.sound.*; 
//make more arrays for different sounds e.g. ayas sounds and music
String[] songNames = {"001.mp3", "002.mp3"};
String [] folioNames ={};
SoundFile[] songs = new SoundFile[songNames.length]; 
SoundFile[] folio = new SoundFile[folioNames.length];
Sound[] music;
Sound[] BGSounds;


float decay = 0.5;
float playhead = 0;
float startingTime = 0;
boolean isPlaying = false;
float amp = 1;

//sound requires

//  SoundFile file;
//  float decay;
//  float playhead;
//  float startingTime;


//  float amp;






//make a sound class, class would have the above variables

void setup()
{
  
  for(int i = 0; i < songNames.length; i++){
    songs[i] = new SoundFile(this,songNames[i]);
  }

  
  for (int i=0; i < music.length; i++)
  {
    music[i] = new Sound(songs[i], 0.5, 1.0);
        //println(i);
  }

}

void draw()
{
  
  //println(a.decay);
  //println(b.decay);
  //b.decay = 100;
  // println(a.decay);
  //println(b.decay);
  ////playPlaylist(sounds);
  
}

void keyPressed() {
  println(music[0].file.duration());

  if (key == 'q') {
    amp = 1;
    music[0].file.play();
    startingTime = millis();
    isPlaying = true;
  }
}

//this function needs parameters, for wether its fade in or face out
//void fadeSound(){
  //if its fade out use this block
  //if (playhead <= sounds[0].duration()) {
    
  //  if (playhead > sounds[0].duration() - decay) {
  //    if(amp <= 0){
  //      amp = 0;
  //    } else {
  //      amp-= 0.09;
  //    }

  //    sounds[0].amp(amp);
  //  }  
  //} 
  
//}
//void playPlaylist(SoundFile sounds[])
//{
//  if (music[0] == null)
//  {
//    //  println("LIST IS EMPTY");
//    return;
//  }

//  if (sounds[0] != null) {
//    int songNo = 0;
//    int songDur = int(sounds[songNo].duration());

//    sounds[songNo].play();

//    for (int s = 0; s <= songDur; s++)
//    {
//      println(s);
//      if (s == songDur)
//      {
//        songNo += 1;
//      }
//    }
//  }
//}

void fadeBetween()
{
}



  
 //this function needs parameters, for wether its fade in or face out



//void keyPressed() {
//  println(sounds[0].duration());

//  if (key == 'q') {
//    amp = 1;
//    sounds[0].play();
//    startingTime = millis();
//    isPlaying = true;
//  }
//}
  

  