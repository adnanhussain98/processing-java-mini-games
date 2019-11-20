void setup()
{
  size (500,500);
  DrawMonster(50,100,150);
  DrawMonster(200,30,50);
  DrawMonster(250,10,30);
}


void DrawMonster( int x, int y, int size  )
{
  int EyeSet = size /4;
  int PupilSet = EyeSet/4;
  int Middle = size/2;
  int MouthDepth = size/6+y+size;
  int ToothSet = size/3;
  
  //monster 1
  
  // draw back
  DrawBack ( x,y, size);
  
  //draw hat (top triangle)
  DrawHat (x,y,size);
  
  //draw left eye
  DrawEye (x+EyeSet, y+EyeSet, size);
  DrawPupil (x+EyeSet+PupilSet,y+EyeSet+PupilSet, size);
  
  //draw right eye
  DrawEye (x+size-EyeSet, y+EyeSet, size);
  DrawPupil (x+size-PupilSet-EyeSet,y+EyeSet+PupilSet, size);
  
  //draw nose
  DrawNose (x+Middle,y+Middle, size);
  
  //draw mouth
  line (x,MouthDepth,x+size,MouthDepth);
  
  //draw Left Tooth
  DrawTooth (x,MouthDepth,size);
  DrawTooth (x+size-ToothSet,MouthDepth, size); 
}
//monster 2

// green back
void DrawBack (int x, int y, int size)
{
  fill(0,255,0);
  rect(x,y,size,y+size);
}

// hat (top triangle)
void DrawHat ( int x, int y, int size)
{
 int middle = size/2;
 int HatSet = size/6;

   line (x+middle-HatSet,y,x + middle, y- HatSet);
   line (x+ middle, y - HatSet, x+middle + HatSet,y);
}

// eyes
void DrawEye (int x, int y, int size)
{
  int EyeSize = size/3;
  fill(255);
  ellipse(x,y,EyeSize,EyeSize);
}

// pupils
void DrawPupil (int x, int y, int size)
{
  int PupilSize = size/9;
  fill(0);
  ellipse(x,y,PupilSize,PupilSize);
}

// nose
void DrawNose (int x, int y, int size)
{
  int NoseSize = size/5;
  fill(255,0,0);
  ellipse(x,y,NoseSize,NoseSize);
}

//mouth
void DrawMouth ( int x, int y, int size)
{
  
   line (x,y,x+size,y);
}
 
void DrawTooth ( int x, int y, int size)
{

 int ToothSet = size/6;

   line (x+ToothSet-ToothSet,y,x + ToothSet, y- ToothSet);
   line (x+ ToothSet, y - ToothSet, x+ToothSet + ToothSet,y);
}