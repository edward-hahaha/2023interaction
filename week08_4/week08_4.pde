//碰撞偵測
//牛頓力學
void setup(){
   size(400,400); 
}
float mirroX=50,mirroY=250,vx=0,vy=0;
void draw(){
  background(108,137,255);
    mirroX+=vx;
    ellipse(mirroX,mirroY,10,20);
    fill(255,0,0);ellipse(mirroX,mirroY,15,20);
    fill(209,119,42);rect(0,260,400,150);
}
void keyPressed(){
    if(keyCode==RIGHT)vx = 2;
    if(keyCode==LEFT)vx=-2;
}
