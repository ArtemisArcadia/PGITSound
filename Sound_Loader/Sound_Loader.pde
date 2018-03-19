import processing.sound.*; 
//make more arrays for different sounds e.g.ayas sounds and music
String[] songNames = {"001.mp3", "002.mp3", "003.mp3", "004.mp3", "005.mp3" }; //song names in here.
String [] foleyNames ={"02"}; //add background soundnames here.
SoundFile[] songs = new SoundFile[songNames.length]; 
SoundFile[] foley = new SoundFile[foleyNames.length];
Sound[] music = new Sound[songs.length];
Sound[] BGSounds = new Sound[foley.length];
//float[] fadePoints = new float[songs.length];

float decay = 0.5;
float playhead = 0;
float startingTime = 0;
boolean isPlaying = false;
float amp = 1;
public static int songNumber = 0;
public static int numOfSongs = 0;
public static int foleyNumber = 0;
public static int numOfFoley = 0;
//sound requires

//  SoundFile file;
//  float decay;
//  float playhead;
//  float startingTime;


//  float amp;






//make a sound class, class would have the above variables

void setup()
{

  for (int i = 0; i < songNames.length; i++) {
    songs[i] = new SoundFile(this, songNames[i]);
    numOfSongs++;
    print(numOfSongs);
  }


  for (int i=0; i < music.length; i++)
  {
    music[i] = new Sound(songs[i], /*fadePoints[i],*/ 0.5, 0);
    //println(i);
  }
}

void draw()

{
  //println(music[0].playhead);
  //println(songNumber);
  //print(numOfSongs);
  //println(a.decay);
  //println(b.decay);
  //b.decay = 100;
  // println(a.decay);
  //println(b.decay);

  if (keyPressed) {
  }
}

void keyPressed() {


  //case '1':
  //      if(isPlaying == true){
  //  music[songNumber].file.stop();
  //      }
  //  println(songNumber);
  //  music[songNumber].playSoundPlaylist();
  //  break;
  ////////////////////////////////////////////CONTROLS MUSIC///////////////////////////////

  switch(key) {

  case '1': 

    println(songNumber);


    music[songNumber].file.stop();

    if (songNumber == numOfSongs - 1) {

      songNumber = 0;
      music[songNumber].amp = 1;
      music[songNumber].file.amp(amp);
      music[songNumber].file.play();
    } else {
      songNumber++;
      music[songNumber].amp = 1;
      music[songNumber].file.amp(amp);
      music[songNumber].file.play();
    }
    break;

  case '2':

    println(songNumber);


    music[songNumber].file.stop();
    if (songNumber == 0) {

      songNumber = numOfSongs - 1;

      music[songNumber].amp = 1;
      music[songNumber].file.amp(amp);
      music[songNumber].file.play();
    } else {
      songNumber--;
      music[songNumber].amp = 1;
      music[songNumber].file.amp(amp);
      music[songNumber].file.play();
    }

    break;


  case '3':

    while (music[songNumber].amp >= 0) {
      music[songNumber].amp -= 0.00001; 
      music[songNumber].file.amp(music[songNumber].amp);
      println(music[songNumber].amp);
    }

    break;  

    ////////////////////////////////////////////CONTROLS MUSIC///////////////////////////////////////////////////////////
    ////////////////////////////////////////////              ///////////////////////////////////////////////////////////
    ///////////////////////////////////////////CONTROLS FOLEY////////////////////////////////////////////////////////////

  case 'q': 
    if (foley[0] != null) {
      println(foley[0]);
      foley[0].play();
    } else if (foley[0] == null){
      println("NO SOUND");
    }
    break;
//add more cases for extra sounds. foley[n]. 


}
//\/\/\/\/\/\/\/\/\/\/\/\/\//CONTROLS FOLEY\\/\/\/\/\/\/\/\/\/\/\/\/\/\/\\

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

//void fadeBetween()
//{
//}




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
}