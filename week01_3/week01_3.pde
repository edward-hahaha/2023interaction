void setup(){
  size(500,500);
  background(255);//白色背景
}

void draw(){
  if(mousePressed){
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
}
