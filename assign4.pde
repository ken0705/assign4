//You should implement your assign3 here.
final int COUNT = 5;
final int GAME_START = 0;
final int GAME_RUN = 1;
final int GAME_OVER = 2;
final int a1 = 3 ;
final int a2 = 4 ;
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

int[][] enemy1= new int[5][2];
int[][] enemy2= new int[5][2];
int[][] enemy3= new int[8][2];
PImage [] images =new PImage [5];

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
  frameRate(60);
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
//  image(enemy,b,e);
  image(treasure,c,d);
  image(fighter,x,y);
  l ++ ;
  a += 1 ;
  a %= 1280 ;
  b %= 2560 ;
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
  if(keyPressed){
    if(key == ' '){
    if(m<=5){
      
        image(shoot,x-l,y);
    }
    }
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
   


  if(g<=0){
    gameState = GAME_OVER;
  }
    



for (int i=0; i<5; i++){
  b++;
  enemy1[i][0]=b+(i*60)-340;
  enemy1[i][1]=h;
  image(enemy,enemy1[i][0],enemy1[i][1]);



  if( enemy1[i][0]-45 <= x && enemy1[i][0]+60 >= x && enemy1[i][1]+45 >= y && enemy1[i][1]-45 <= y ){



    
  image(images[i], enemy1[i][0], enemy1[i][1]);

   enemy1[i][1]=640;
   g-=20;   
  }
  frameRate(100);

  

 }
 if(b>=1280){
    gameState = a1;
    h=floor(random(0,420));
  }
  break ;
  case a1 :
  image(bg1,a-640,0);
  image(bg2,a,0);  
  image(bg1,a+640,0);
  image(bg2,a-1280,0);
  fill(255,0,0);
  rect(15,10,g,31);
  image(hp,10,10);
//  image(enemy,b,e);
  image(treasure,c,d);
  image(fighter,x,y);
  a += 1 ;
    l ++ ;
  a %= 1280 ;
  b2 %= 1280 ;
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
    

int spacingX2 = 60;
int spacingY2 = 60;
int x2 = 0, y12 = 0;

for (int i=0; i<5 ;  i++ ){
      b2 += 1 ;
  x2 = i*spacingX2;
  enemy2[i][0]=x2+b2-640;
  enemy2[i][1]=y12+k;
  image(enemy,enemy2[i][0],enemy2[i][1]);
  y12 += spacingY2;

   if( enemy2[i][0]-45 <= x && enemy2[i][0]+60 >= x && enemy2[i][1]+45 >= y && enemy2[i][1]-45 <= y ){

   image(images[i], enemy2[i][0], enemy2[i][1]);
   enemy2[i][1]=640;
      g-=20; 

 }
 if(b2>=1280){
    gameState = a2;
    b=0;
      k=floor(random(0,120));
  }
  }
  break ;

    case a2 :
        image(bg1,a-640,0);
  image(bg2,a,0);  
  image(bg1,a+640,0);
  image(bg2,a-1280,0);
  fill(255,0,0);
  rect(15,10,g,31);
  image(hp,10,10);
//  image(enemy,b,e);
  image(treasure,c,d);
  image(fighter,x,y);
  a += 1 ;
  l ++ ;
  a %= 1280 ;
  b3 %= 1280 ;
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
  b3+=5;
 
  for(int p=0 ; p<8 ; p++ ){

  enemy3[0][0]=b3-640;
  enemy3[1][0]=b3-532;
  enemy3[2][0]=b3-424;
  enemy3[3][0]=b3-532;
  enemy3[4][0]=b3-424;
  enemy3[5][0]=b3-316;
  enemy3[6][0]=b3-316;
  enemy3[7][0]=b3-208;
  enemy3[0][1]=120+j;
  enemy3[1][1]=60+j;
  enemy3[2][1]=0+j;
  enemy3[3][1]=180+j;
  enemy3[4][1]=240+j;
  enemy3[5][1]=180+j;
  enemy3[6][1]=60+j;
  enemy3[7][1]=120+j;



image(enemy,enemy3[p][0],enemy3[p][1]);

  if( enemy3[p][0]-45 <= x && enemy3[p][0]+60 >= x && enemy3[p][1]+45 >= y && enemy3[p][1]-45 <= y ){
    
   image(images[p], enemy3[p][0], enemy3[p][1]);
   enemy3[p][1]=640;
   g-=20;
  }

 if(b3>=1280){
    gameState = GAME_RUN;
      j=floor(random(0,120));
  }
}
  break ;  
  
  case GAME_OVER:
    image(end2,0,0);
  if (mouseX>210 && mouseX<440 && mouseY>315 && mouseY<345){
    if (mousePressed){
     gameState = GAME_RUN;    
     g=40;
  a=0 ;
  b=0 ;
  g=40;
  c=floor(random(0,600));
  d=floor(random(0,440));
  e=floor(random(0,440));
  f=floor(random(0,440)); 
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
