//Global variables
int x; //ball x position
int deltaX = 5; //ball x direction is right, step 5
int y; // ball y position
int deltaY= 5; //ball y direction is 
int rectX, rectY, rectW, rectH, rectS; //bat 

void setup() //runs once at start 
{
size(500,400); 
// bat variables
rectX = 20;
rectY = height/2;
rectW = 30 ;
rectH = 80;
rectS = 20;
}

void keyPressed()
{
  if ( (keyCode==UP) && (rectY >=0))
  {
    rectY=rectY-5;
  }
  if ((keyCode==DOWN) && (rectY<=height-rectH))
  {
    rectY=rectY+5;
  }
}
//the bat
void drawrect ()
{
rect(rectX,rectY,rectW,rectH);

}


void updateBall()
{
//draw and update ball position
ellipse(x,y,10,10);
x = x + deltaX; //move ball x right
y = y + deltaY; // move ball x right

//Collision Detection
//collide in x
if (x>=width)
  deltaX = -deltaX; //reverse x direction
  
  //collide y direction
  if(y>=height||y<=0)
  deltaY=-deltaY;
  
  if ( x==rectX + rectW && y>=rectY && y<rectH + rectY)
  {
    deltaX = -deltaX;
  }
}


//bouncing ball code
void draw() //runs repeatedly 
{
background(200); //clear screen RGB = 200 (grey)
updateBall();
 
drawrect();
}
