float x = 250;
float y = 250;
float size = 200; 

//screen size
size(500,500);

// body
line(x,y,x, y-size);

//arms
line(x+size/2, y-size/2, x-size/2, y-size/2);

// right leg
line(x,y,x+size/2,y+size/2);

//left leg
line(x,y, x-size/2,y+size/2);

//head
fill(255,255,255);
ellipse(x,y-size, size/2.5, size/2.5);