void setup()
{
	size(241,241);
	noLoop();
}
void draw()
{
	for (int y=3; y<=300; y=y+40)
  {
    for (int x=3; x<=240; x=x+40)
    {

      Die bob = new Die(x, y);
      bob.roll();
      bob.show();
    }
   }
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int myX, myY, num;

	Die(int x, int y) //constructor
	{
    	myX=x;
    	myY=y;

	}

	void roll()
	{
		num = (int)((Math.random()*6)+1);
	}

	void show()
	{
		noStroke();
		fill(0);
		rect(myX, myY, 35,35,5);


		fill(200);
		myX= myX +18;
		myY = myY -23;
		if (num==1)
			ellipse(myX, myY, 4,4);

		else if (num==2)
		{
			ellipse(myX-5, myY+5, 4,4);
			ellipse(myX+5, myY-5, 4,4);
		}

		else if (num==3)
		{
			ellipse(myX, myY, 4,4);
			ellipse(myX-5, myY+5, 4,4);
			ellipse(myX+5, myY-5, 4,4);
		}

		else if (num==4)
		{
			ellipse(myX-5, myY+5, 4,4);
			ellipse(myX+5, myY-5, 4,4);
			ellipse(myX-5, myY-5, 4,4);
			ellipse(myX+5, myY+5, 4,4);
		}

		else if (num==5)
		{
			ellipse(myX, myY, 4,4);
			ellipse(myX-5, myY+5, 4,4);
			ellipse(myX+5, myY-5, 4,4);
			ellipse(myX-5, myY-5, 4,4);
			ellipse(myX+5, myY+5, 4,4);
		}

		else if (num==6)
		{
			ellipse(myX-5, myY+5, 4,4);
			ellipse(myX-5, myY, 4,4);
			ellipse(myX-5, myY-5, 4,4);
			ellipse(myX+5, myY+5, 4,4);
			ellipse(myX+5, myY, 4,4);
			ellipse(myX+5, myY-5, 4,4);
		}
	}
}
