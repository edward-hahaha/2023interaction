//碰撞偵測
//牛頓力學
void setup(){
   size(400,400); 
}
float marioX=50,marioY=250,vx=0,vy=0;
void draw(){
  background(108,137,255);
    marioX+=vx;
    if(flying){//如果再飛
    marioY+=vy;//上下位置會改變
    vy+=0.98;//重力加速度往下
    }
    if(marioY>=250){//碰到地板
       marioY = 250;
       flying = false;//不再飛行
    }

    fill(255,0,0);ellipse(marioX,marioY,15,20);
    fill(209,119,42);rect(0,260,400,150);
    fill(209,119,42);rect(200,150,20,20);
    if(hitBox(200,150,20,20)){
       vy=0;
       marioY = 150+20;
    }
}
boolean hitBox(int x,int y,int w,int h){
   if(x<marioX && marioX<x+w && y<marioY && marioY<y+h)return true;
   else return false;
}

boolean flying = false;//一開始沒在飛
void keyPressed(){
    if(keyCode==RIGHT)vx = 2;
    if(keyCode==LEFT)vx=-2;
    if(keyCode==UP && flying==false){//如果沒有在飛才能飛
      vy=-20;
      flying=true;//開始飛
    }
}
void keyReleased(){
   if(keyCode==LEFT || keyCode==RIGHT)vx=0; 
}
