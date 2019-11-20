
final color RED = color(255,0,0);
final color BLUE = color(0,0,255);
final color GREEN = color(80,200,20);
final int RACING = 0;
final int FINISHED = 1;
int gameMode = RACING;
int winBlue = 0;
int winRed = 0;
int winGreen = 0;

 
class motorbike
{
 int x = 5;  //members
 int y;
 int speed=2;
 int size=30;
 color colour;

 
 motorbike(int y, color col)
 { //constructor 
   this.y = y;
   this.speed = (int)random(5.0);
   this.colour = col;
 }

void render()
 {
   float wheelHeight = size/3;
   fill(colour);
   triangle(x,y,x+size,y,x+size/2,y-size/2);
   drawWheel(x,y,wheelHeight);
   drawWheel(x+size,y,wheelHeight);
 }
 
 void drawWheel(int x,int y,float size)
 {
    float inner = size*2/3;
    fill(0);
    ellipse(x,y,size,size);
    fill(255);
    ellipse(x,y,inner,inner);
 }
 
 void move()
 {
   speed = (int)random(5.0);
   x = x + speed;
 } 
 
 void update()
{
  render();
  if(!finished())
  {
    move();
  }

}

boolean finished()
 {
    return x>(width-10); //screen width
 }
} //end of class description

  motorbike b1;
  motorbike b2;
  motorbike b3;

void keyPressed()
{
  if(gameMode == FINISHED && key == ' ')
       
  {
    gameMode = RACING;
    b1 = new motorbike(50, RED);
    b2 = new motorbike(80, BLUE);
    b3 = new motorbike(110, GREEN);
    
  }
}


void setup()
{
  size(500,300);
  b1 = new motorbike(50, RED);
  b2 = new motorbike(80, BLUE);
  b3 = new motorbike(110, GREEN) ;
  
}

void draw()
{
  background(125);
  text("BLUE:"+winBlue,10,10);  
  text("RED:"+winRed,10,30);
  text("GREEN:"+winGreen,10,50);
  if ( gameMode == RACING )
  {
  b1.update();
  b2.update();
  b3.update();
  
  if(b1.finished() || b2.finished() || b3.finished() )
    gameMode = FINISHED;
    score();
  }
  else
  {
    text("GAME OVER", 30, height/2);
  }
}

void score()
{
  if (b1.finished())
  winBlue = winBlue+1;
  
  else if (b2.finished())
  winRed = winRed+1;
  
  else if (b3.finished())
  winGreen = winGreen+1;
}
  
  

  