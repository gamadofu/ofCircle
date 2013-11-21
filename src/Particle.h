//
//  Particle.h
//  Circle
//
//  Created by 矢島 新太郎 on 2013/11/21.
//
//

#ifndef __Circle__Particle__
#define __Circle__Particle__

#include "ofMain.h"

#endif /* defined(__Circle__Particle__) */
class Particle {

public:
  ofVec2f pos; // 位置
  ofVec2f vel; // 速度
  ofVec2f frc; // 力 加速
  float damping; // 摩擦
  
  Particle();
  virtual ~Particle(){};
  void resetForce();
  void addForce(float x, float y);
  void addDamingForc();
  void setInitialCondition(float px, float py, float vx, float vy);
  void update();
  void draw();
  
  
};