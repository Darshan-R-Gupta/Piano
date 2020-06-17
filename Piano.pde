import processing.sound.*;

SoundFile sounds[];

void setup(){
  fullScreen();
  sounds = new SoundFile[26];
  for(int i = 0; i < 26; ++i)
  {
    sounds[i] = new SoundFile(this, "Sound\\Bright\\(" + int(i+1) +").wav");
  }
  fill(255);
  textSize(90);
}
float hue = 26;
void draw(){
  background(0);
  if(key != CODED){
     text(key,width/2-45, height/2);
  }
}
void keyPressed(){
  if(key != CODED){
    if( (key >= 65 && key <= 90) || (key >= 97 && key <= 122) ){
       if(key <= 90){
         sounds[key -65].play(1.5,1);
       }
       else{
         sounds[key-97].play(0.5,1);
       }  
    }
  }
}
