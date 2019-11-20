class Defender 
{
  int x;
  int y;
  int speed=2;
 
 Defender(int x, int y)
 {
   this.x = x;
   this.y = y;
 }

boolean crash()
{
  for(int i=0 ; i<20 ; i++)
  {
    
  
  color pixelColour = get(x+60,y+i);
  if (pixelColour == Alien11||pixelColour==Alien2) //2 equals means are the 2 things the same
  {
    return true;
  }
  }
    return false;
}

void render() //draw on screen 
{
  //draw a defender
  fill(255,0,0);
  rect(x,y,50,20); 
  triangle(x+50,y,x+50,y+20,x+60,y+10);
  fill(0,0,100);
  rect(x,y-10,20,10);
}
}