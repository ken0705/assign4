final int COUNT = 5;
final int GAME_START = 0;
final int GAME_RUN = 1;
final int GAME_OVER = 2;
int jj=0;
int xx = 0;
int gameState;
PImage hp;
PImage enemy;
PImage treasure;
PImage fighter;
PImage bg1;
PImage bg2;
PImage start1 ;
PImage start2 ;
PImage end1 ;
PImage end2 ;
PImage shoot ;
int a ;
int b ;
int b2 ;
int b3 ;
int c ;
int d ;
int e ;
int f ;
int g ;
int h ;
int k ;
int j ;
int l ;
int m ;
int x = 550;
int y = 240;
float speed = 5;
boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;
boolean[] e1 =new boolean [5];
boolean[] e2 =new boolean [5];
boolean[] e3 =new boolean [8];
int[][] enemy1= new int[5][2];
int[][] enemy2= new int[5][2];
int[][] enemy3= new int[8][2];
PImage [] images =new PImage [5];
int sx[]=new int[5];
int sy[]=new int[5];
void setup(){
  background(0);
  size(640,480);
  
  m=0;
  a=0 ;
  b=0 ;
  b2=0;
  b3=0;
  g=40;
  c=floor(random(0,600));
  d=floor(random(0,440));
  e=floor(random(0,420));
  f=floor(random(0,440));
  h=floor(random(0,420));
  k=floor(random(0,120));
  j=floor(random(0,120));
  l=0;
  fill(255,0,0);
  rect(10,10,g,31);
  fighter=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  
  enemy=loadImage("img/enemy.png");
  
  shoot=loadImage("img/shoot.png");
  treasure=loadImage("img/treasure.png");
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  start1=loadImage("img/start1.png");
  start2=loadImage("img/start2.png");  
  end1=loadImage("img/end1.png");
  end2=loadImage("img/end2.png");
  for (int i=0; i<5; i++){
    images[i] = loadImage("img/flame" + (i+1) + ".png");
  }
  frameRate(10000);
}
void draw(){
  image(start2,0,0);
    switch (gameState){
    case GAME_START:
  if(mouseX>210 && mouseX<440 && mouseY>380 && mouseY<410){
    if(mousePressed){
          gameState = GAME_RUN;
    }else{
      image(start1,0,0);
    }
  }
  break ;
  case GAME_RUN:
    image(bg1,a-640,0);
  image(bg2,a,0);  
  image(bg1,a+640,0);
  image(bg2,a-1280,0);
  fill(255,0,0);
  rect(15,10,g,31);
  image(hp,10,10);
  image(treasure,c,d);
  image(fighter,x,y);

  a += 1 ;
  a %= 1280 ;
  b+=4;
  if(b>=2939){
  h=floor(random(0,420));
  k=floor(random(0,120));
  j=floor(random(0,120));
   enemy1[0][0]=-60+b;
   enemy1[1][0]=-130+b;
   enemy1[2][0]=-200+b;
   enemy1[3][0]=-270+b;
   enemy1[4][0]=-340+b;
   enemy1[0][1]=h;
   enemy1[1][1]=h;
   enemy1[2][1]=h;
   enemy1[3][1]=h;
   enemy1[4][1]=h;
   enemy2[0][0]=-640-340-60+b;
   enemy2[1][0]=-640-340-130+b;
   enemy2[2][0]=-640-340-200+b;
   enemy2[3][0]=-640-340-270+b;
   enemy2[4][0]=-640-340-340+b;
   enemy2[0][1]=k;
   enemy2[1][1]=k+60;
   enemy2[2][1]=k+120;
   enemy2[3][1]=k+180;
   enemy2[4][1]=k+240;
   enemy3[0][0]=-640-640-340-340-60+b;
   enemy3[1][0]=-640-640-340-340-130+b;
   enemy3[2][0]=-640-640-340-340-130+b;
   enemy3[3][0]=-640-640-340-340-200+b;
   enemy3[4][0]=-640-640-340-340-200+b;
   enemy3[5][0]=-640-640-340-340-270+b;
   enemy3[6][0]=-640-640-340-340-270+b;
   enemy3[7][0]=-640-640-340-340-340+b;
   enemy3[0][1]=j+120;
   enemy3[1][1]=j+60;
   enemy3[2][1]=j+180;
   enemy3[3][1]=j;
   enemy3[4][1]=j+240;
   enemy3[5][1]=j+60;
   enemy3[6][1]=j+180;
   enemy3[7][1]=j+120;
  }
  b %= 2940 ;
  f %= 440 ;
    if (upPressed) {
    y -= speed;
  }
  if (downPressed) {
    y += speed;
  }
  if (leftPressed) {
    x -= speed;
  }
  if (rightPressed) {
    x += speed;
  }
  xx++;
  if(xx%(5)==0){
  if (keyPressed) {
    if (key == ' ' || key == ' ') {
      jj++;
      sx[jj%5]=x;
      sy[jj%5]=y+10;
      }}}
      for(int z=0;z<5;z++){
      sx[z] -= 6;
      if(sx[z]<-20){
       sy[z]=500; 
      }
      image(shoot,sx[z],sy[z]);
      }

  if( x <= 0 ){
  x=0;
  }
  if( y <= 0 ){
  y=0;
  }
  if( x >= 590 ){
  x=590; 
  }
  if( y >= 430 ){
  y=430; 
   }

 if(x>=c-45 && x<c+40 && y>=d-45 && y<=d+40){
  c=floor(random(0,600));
  d=floor(random(0,440));
  image(treasure,c,d);   
  g += 20;
  }
  if(g>=200){
    g=200;
  }
  if(g<=0){
    gameState = GAME_OVER;
  }
    
   enemy1[0][0]=-60+b;
   enemy1[1][0]=-130+b;
   enemy1[2][0]=-200+b;
   enemy1[3][0]=-270+b;
   enemy1[4][0]=-340+b;
   enemy1[0][1]=h;
   enemy1[1][1]=h;
   enemy1[2][1]=h;
   enemy1[3][1]=h;
   enemy1[4][1]=h;
   enemy2[0][0]=-640-340-60+b;
   enemy2[1][0]=-640-340-130+b;
   enemy2[2][0]=-640-340-200+b;
   enemy2[3][0]=-640-340-270+b;
   enemy2[4][0]=-640-340-340+b;
   enemy2[0][1]=k;
   enemy2[1][1]=k+60;
   enemy2[2][1]=k+120;
   enemy2[3][1]=k+180;
   enemy2[4][1]=k+240;
   enemy3[0][0]=-640-640-340-340-60+b;
   enemy3[1][0]=-640-640-340-340-130+b;
   enemy3[2][0]=-640-640-340-340-130+b;
   enemy3[3][0]=-640-640-340-340-200+b;
   enemy3[4][0]=-640-640-340-340-200+b;
   enemy3[5][0]=-640-640-340-340-270+b;
   enemy3[6][0]=-640-640-340-340-270+b;
   enemy3[7][0]=-640-640-340-340-340+b;
   enemy3[0][1]=j+120;
   enemy3[1][1]=j+60;
   enemy3[2][1]=j+180;
   enemy3[3][1]=j;
   enemy3[4][1]=j+240;
   enemy3[5][1]=j+60;
   enemy3[6][1]=j+180;
   enemy3[7][1]=j+120;
     for(int i=0;i<5;i++){
 if(x>=enemy1[i][0]-60 && x<enemy1[i][0]+50 && y>=enemy1[i][1]-60 && y<=enemy1[i][1]+50){

    for(int z=0;z<5;z++)
    image(images[z],enemy1[i][0],enemy1[i][1]);
    e1[i]=false;
        g-=40;
  
  }
  }
    for(int i=0;i<5;i++){
   if(x>=enemy2[i][0]-60 && x<enemy2[i][0]+50 && y>=enemy2[i][1]-60 && y<=enemy2[i][1]+50){

    for(int z=0;z<5;z++)
    image(images[z],enemy3[i][0],enemy3[i][1]);
    e2[i]=false;
        g-=40;
  
  }
    }
  for(int i=0;i<8;i++){
   if(x>=enemy3[i][0]-60 && x<enemy3[i][0]+50 && y>=enemy3[i][1]-60 && y<=enemy3[i][1]+50){

    for(int z=0;z<5;z++)
    image(images[z],enemy3[i][0],enemy3[i][1]);
    e3[i]=false;
        g-=40;
  
  }
  }
for(int i =0;i<5;i++){
  if(e1[i]=true){
  image(enemy,enemy1[i][0],enemy1[i][1]);
  }else{
  image(enemy,720,640);
  }
}
for(int i =0;i<5;i++){
  if(e2[i]=true){
    image(enemy,enemy2[i][0],enemy2[i][1]);
  }else{
  image(enemy,720,640);
  }
}

for(int i =0;i<8;i++){
  if(e3[i]=true){
    image(enemy,enemy3[i][0],enemy3[i][1]);
  }else{
   image(enemy,720,640); 
  }
 
}
for(int ii=0;ii<5;ii++){
for(int i=0;i<5;i++){
if(sx[i]>0){
 if(sx[i]>=enemy2[ii][0]-60 && sx[i]<enemy2[i][0]+20 && sy[i]>=enemy2[ii][1]-60 && sy[i]<=enemy2[ii][1]+20 ){
   for(int z=0;z<5;z++){
    image(images[z],enemy2[ii][0],enemy2[ii][1]);
    e2[ii]=false;
   }
  }
}
}
}
for(int ii=0;ii<5;ii++){
for(int i=0;i<5;i++){
if(sx[i]>0){
 if(sx[i]>=enemy1[ii][0]-60 && sx[i]<enemy1[ii][0]+20 && sy[i]>=enemy1[ii][1]-60 && sy[i]<=enemy1[ii][1]+20 ){
   for(int z=0;z<5;z++){
    image(images[z],enemy1[ii][0],enemy1[ii][1]);
    e1[ii]=false;
    sy[i]=640;
   }
  }
}
}
}
for(int ii=0;ii<8;ii++){
for(int i=0;i<5;i++){
if(sx[i]>0){
 if(sx[i]>=enemy3[ii][0]-60 && sx[i]<enemy3[ii][0]+20 && sy[i]>=enemy3[ii][1]-60 && sy[i]<=enemy3[ii][1]+20 ){
   for(int z=0;z<5;z++){
    image(images[z],enemy3[ii][0],enemy3[ii][1]);
    e3[ii]=false;
   }
  }
}
}
}
  break ;
  
  
  case GAME_OVER:
    image(end2,0,0);
  if (mouseX>210 && mouseX<440 && mouseY>315 && mouseY<345){
    if (mousePressed){
     gameState = GAME_RUN;    
  m=0;
  a=0 ;
  b=0 ;
  b2=0;
  b3=0;
  g=40;
  c=floor(random(0,600));
  d=floor(random(0,440));
  e=floor(random(0,420));
  f=floor(random(0,440));
  h=floor(random(0,420));
  k=floor(random(0,120));
  j=floor(random(0,120));
  l=0;
  x = 550;
  y = 240;
    }else{
     image(end1,0,0);
    }
  break;
        
      }
    }
    

}
  

void keyPressed() {
  if (key == CODED) { // detect special keys 
    switch (keyCode) {
      case UP:
        upPressed = true;
        break;
      case DOWN:
        downPressed = true;
        break;
      case LEFT:
        leftPressed = true;
        break;
      case RIGHT:
        rightPressed = true;
        break;
  
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    switch (keyCode) {
      case UP:
        upPressed = false;
        break;
      case DOWN:
        downPressed = false;
        break;
      case LEFT:
        leftPressed = false;
        break;
      case RIGHT:
        rightPressed = false;
        break;
    }
  }
}
