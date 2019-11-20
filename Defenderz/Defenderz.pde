PImage background;
int x=0; //global variable background location
Defender ship1;
Alien Alien1;

color Alien11 = color(0, 255, 0);
color Alien2 = color(50, 100, 0);

final int FLYING = 0;
final int FINISHED = 1;

int gameMode = FLYING;

void setup()
{
  size(800, 400);
  background = loadImage("spaceBackground.jpg"); 
  background.resize(width, height);

  ship1= new Defender(50, 200);
  Alien1 = new Alien(700, 200);
}
void draw () 
{
  image(background, x, 0); //draw background twice adjacent 
  image(background, x+background.width, 0);
  x -=4;
  if (x == -background.width)

    x=0; //wrap background

  ship1.render();
  Alien1.render();
  Alien1.move();
  
  if(ship1.crash())
  {
    gameMode = FINISHED; 
      {
        noLoop();
        text("GAME OVER",width/2,height/2);
      }
  }

  
}

boolean FINISHED()
 {
    return x>(width-10); //screen width
 }

void keyPressed()
{
  {
  if(gameMode == FINISHED && key == ' ')
       
  {
    gameMode = FLYING;
    
  }
}
  
  if (keyCode==UP)
  {
    if (ship1.y>10)
    {
      ship1.y= ship1.y-5;
    }
  }
  if (keyCode==DOWN)
  {
    if (ship1.y<380)
    {
      ship1.y= ship1.y+5;
    }
  }
}