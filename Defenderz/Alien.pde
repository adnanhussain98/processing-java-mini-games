class Alien
{
  int x;
  int y;
  int speed=5;
  
  Alien(int x, int y)
  {
  this.x = x;
  this.y = y;
  }
 
 
  void render() //draw on screen 
  {
  //draw an alien
  fill(Alien11);
  ellipse(x,y,30,30);
  fill(Alien2); 
  ellipse(x,y,50,15);
  }
  
  void move()
  {
    x=x-speed;
    if(x<0)
    {
      x=width;
    }
  }  
  
}