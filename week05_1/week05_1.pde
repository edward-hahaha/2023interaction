void setup(){
  size(400,400,P3D);//Processing 的3D功能
}
void draw(){
  background(#FFFFF2);
  pushMatrix();//備份矩陣
    translate(mouseX,mouseY);//移動
    rotateY(radians(mouseX));//對Y軸轉
    fill(0,255,0);//面填綠色
    box(100);//3D盒子，方塊
        
    noFill();//面部填色
    scale(2);//放大2倍
    box(100);
    popMatrix();//還原矩陣
}
