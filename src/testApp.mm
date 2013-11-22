#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
  ofSetVerticalSync(true);
  ofSetFrameRate(60);
  ofBackground(0, 0, 0);
  ofEnableBlendMode(OF_BLENDMODE_ADD);
  
  // image
  img.loadImage("particle32.png");
}

//--------------------------------------------------------------
void testApp::update(){
  for (int i = 0; i < particles.size(); i++) {
    particles[i].resetForce();
    particles[i].addForce(0, 0.01);
    particles[i].addDamingForc();
    particles[i].update();
  }
}

//--------------------------------------------------------------
void testApp::draw(){
  ofSetColor(255, 255, 255);
  // 左上にメッセージ
  string message  ="current paticle num = " + ofToString(particles.size(), 0);
  ofDrawBitmapString(message, 20, 20);
 
  for (int i = 0; i < particles.size(); i++) {
    float posx = particles[i].pos.x - 16;
    float posy = particles[i].pos.y - 16;
    img.draw(posx, posy);
  }
}

//--------------------------------------------------------------
void testApp::exit(){

}

//--------------------------------------------------------------
void testApp::touchDown(ofTouchEventArgs & touch){
}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){
  Particle myParticle;
  // init
  float vx = ofRandom(-1, 1);
  float vy = ofRandom(-1, 1);
  myParticle.setInitialCondition(touch.x, touch.y, vx, vy);
  // オブジェクトを格納
  particles.push_back(myParticle);
}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchDoubleTap(ofTouchEventArgs & touch){
  particles.clear();
}

//--------------------------------------------------------------
void testApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::lostFocus(){

}

//--------------------------------------------------------------
void testApp::gotFocus(){

}

//--------------------------------------------------------------
void testApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void testApp::deviceOrientationChanged(int newOrientation){

}