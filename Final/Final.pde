import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import controlP5.*;

ControlP5 cp5;

float n,n1;

Minim base;

AudioPlayer music1;
AudioPlayer music2;
AudioPlayer music3;
AudioPlayer music4;
AudioPlayer music5;

void setup(){
 size(600,600,P3D);
//music start
 cp5 = new ControlP5(this);
 cp5.addButton("Start1")
 .setValue(0)
 .setPosition(200,200)
 .setSize(50,50);
  
 cp5 = new ControlP5(this);
 cp5.addButton("Start2")
 .setValue(0)
 .setPosition(200,260)
 .setSize(50,50);
 
 cp5 = new ControlP5(this);
 cp5.addButton("Start3")
 .setValue(0)
 .setPosition(200,320)
 .setSize(50,50);
 
 cp5 = new ControlP5(this);
 cp5.addButton("Start4")
 .setValue(0)
 .setPosition(200,380)
 .setSize(50,50);
 
  cp5 = new ControlP5(this);
 cp5.addButton("Start5")
 .setValue(0)
 .setPosition(200,440)
 .setSize(50,50);
 
 //pause
 cp5 = new ControlP5(this);
  cp5.addButton("Pause1")
 .setValue(0)
 .setPosition(260,200)
 .setSize(50,50);
 
  cp5 = new ControlP5(this);
  cp5.addButton("Pause2")
 .setValue(0)
 .setPosition(260,260)
 .setSize(50,50);
 
  cp5 = new ControlP5(this);
  cp5.addButton("Pause3")
 .setValue(0)
 .setPosition(260,320)
 .setSize(50,50);
 
  cp5 = new ControlP5(this);
  cp5.addButton("Pause4")
 .setValue(0)
 .setPosition(260,380)
 .setSize(50,50);
 
  cp5 = new ControlP5(this);
  cp5.addButton("Pause5")
 .setValue(0)
 .setPosition(260,440)
 .setSize(50,50);
 
 //reset
  cp5 = new ControlP5(this);
  cp5.addButton("Reset1")
 .setValue(0)
 .setPosition(320,200)
 .setSize(50,50);
 
  cp5 = new ControlP5(this);
  cp5.addButton("Reset2")
 .setValue(0)
 .setPosition(320,260)
 .setSize(50,50);
 
  cp5 = new ControlP5(this);
  cp5.addButton("Reset3")
 .setValue(0)
 .setPosition(320,320)
 .setSize(50,50);
 
  cp5 = new ControlP5(this);
  cp5.addButton("Reset4")
 .setValue(0)
 .setPosition(320,380)
 .setSize(50,50);
 
  cp5 = new ControlP5(this);
  cp5.addButton("Reset5")
 .setValue(0)
 .setPosition(320,440)
 .setSize(50,50);
 
 
 
 base = new Minim(this);
 music1 = base.loadFile("428.mp3");
 music2 = base.loadFile("344.mp3");
 music3 = base.loadFile("Backbeat.mp3");
 music4 = base.loadFile("Coronary.mp3");
 music5 = base.loadFile("Stratosphere.mp3");
}

void draw(){
 background(0);
 stroke(255,255,255);
 
//1
 for (int i = 0; i < music1.bufferSize() - 1; i++)
 {
   float x1 = map(i, 0, music1.bufferSize(), 0, width);
   float x2 = map(i+1, 0, music1.bufferSize(), 0, width);
   line(x1, 50 + music1.left.get(i)*50, x2, 50 + music1.left.get(i+1)*50);
   line(x1, 150 + music1.right.get(i)*50, x2, 150 + music1.right.get(i+1)*50);
} 
   map(music1.position(), 0, music2.length(), 0, width);
   stroke(255,0,0);

//2
    for (int i = 0; i < music2.bufferSize() - 1; i++)
 {
   float y1 = map(i, 0, music2.bufferSize(), 0, width);
   float y2 = map(i+1, 0, music2.bufferSize(), 0, width);
   line(y1, 50 + music2.left.get(i)*50, y2, 50 + music2.left.get(i+1)*50);
   line(y1, 150 + music2.right.get(i)*50, y2, 150 + music2.right.get(i+1)*50);
} 
   map(music2.position(), 0, music2.length(), 0, width);
   stroke(0,255,0);

//3
    for (int i = 0; i < music3.bufferSize() - 1; i++)
 {
   float y1 = map(i, 0, music3.bufferSize(), 0, width);
   float y2 = map(i+1, 0, music3.bufferSize(), 0, width);
   line(y1, 50 + music3.left.get(i)*50, y2, 50 + music3.left.get(i+1)*50);
   line(y1, 150 + music3.right.get(i)*50, y2, 150 + music3.right.get(i+1)*50);
} 
   map(music3.position(), 0, music3.length(), 0, width);
   stroke(0,0,255);

//4
    for (int i = 0; i < music4.bufferSize() - 1; i++)
 {
   float y1 = map(i, 0, music4.bufferSize(), 0, width);
   float y2 = map(i+1, 0, music4.bufferSize(), 0, width);
   line(y1, 50 + music4.left.get(i)*50, y2, 50 + music4.left.get(i+1)*50);
   line(y1, 150 + music4.right.get(i)*50, y2, 150 + music4.right.get(i+1)*50);
} 
   map(music4.position(), 0, music4.length(), 0, width);
   stroke(50,50,50);
   
//5
    for (int i = 0; i < music5.bufferSize() - 1; i++)
 {
   float y1 = map(i, 0, music5.bufferSize(), 0, width);
   float y2 = map(i+1, 0, music5.bufferSize(), 0, width);
   line(y1, 50 + music5.left.get(i)*50, y2, 50 + music5.left.get(i+1)*50);
   line(y1, 150 + music5.right.get(i)*50, y2, 150 + music5.right.get(i+1)*50);
} 
   map(music5.position(), 0, music5.length(), 0, width);
   stroke(255,0,0);
}

//play
public void Start1(int theValue){
  println(+theValue);
  music1.play();
}
public void Start2(int theValue){
  println(+theValue);
  music2.play();
}
public void Start3(int theValue){
  println(+theValue);
  music3.play();
}
public void Start4(int theValue){
  println(+theValue);
  music4.play();
}
public void Start5(int theValue){
  println(+theValue);
  music5.play();
}

//pause
public void Pause1(int theValue){
  println(+theValue);
  music1.pause();
}
public void Pause2(int theValue){
  println(+theValue);
  music2.pause();
}
public void Pause3(int theValue){
  println(+theValue);
  music3.pause();
}
public void Pause4(int theValue){
  println(+theValue);
  music4.pause();
}
public void Pause5(int theValue){
  println(+theValue);
  music5.pause();
}

//reset
public void Reset1(int theValue){
  println(+theValue);
  music1.rewind();
}
public void Reset2(int theValue){
  println(+theValue);
  music2.rewind();
}
public void Reset3(int theValue){
  println(+theValue);
  music3.rewind();
}
public void Reset4(int theValue){
  println(+theValue);
  music4.rewind();
}
public void Reset5(int theValue){
  println(+theValue);
  music5.rewind();
}
