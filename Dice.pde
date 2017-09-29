void setup()
{
	size(241,255);
	noLoop();
}
void draw()
{
	background(200);
	int totalDot=0;
	for (int y=20; y<=245; y=y+40)
  {
    for (int x=3; x<=240; x=x+40)
    {

      Die bob = new Die(x, y);
      bob.roll();
      bob.show();
      totalDot = totalDot + bob.num;
      fill(255,0,0);
      textSize(15);
      text (totalDot, 12,0);
    }
   }
   text (totalDot, 12,12);
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
    	myY=y +33;

	}

	void roll()
	{
		num = (int)((Math.random()*6)+1);
	}

	void show()
	{
		noStroke();
		fill(0);
		rect(myX, myY-38, 35,35,5);


		fill(200,0,0);
		
		
		if (num==1)
			ellipse(myX+18, myY-23, 4,4);

		else if (num==2)
		{
			ellipse(myX-5+18, myY+5-23, 4,4);
			ellipse(myX+5+18, myY-5-23, 4,4);
		}

		else if (num==3)
		{
			ellipse(myX+18, myY-23, 4,4);
			ellipse(myX-5+18, myY+5-23, 4,4);
			ellipse(myX+5+18, myY-5-23, 4,4);
		}

		else if (num==4)
		{
			ellipse(myX-5+18, myY+5-23, 4,4);
			ellipse(myX+5+18, myY-5-23, 4,4);
			ellipse(myX-5+18, myY-5-23, 4,4);
			ellipse(myX+5+18, myY+5-23, 4,4);
		}

		else if (num==5)
		{
			ellipse(myX+18, myY-23, 4,4);
			ellipse(myX-5+18, myY+5-23, 4,4);
			ellipse(myX+5+18, myY-5-23, 4,4);
			ellipse(myX-5+18, myY-5-23, 4,4);
			ellipse(myX+5+18, myY+5-23, 4,4);
		}

		else if (num==6)
		{
			ellipse(myX-5+18, myY+5-23, 4,4);
			ellipse(myX-5+18, myY-23, 4,4);
			ellipse(myX-5+18, myY-5-23, 4,4);
			ellipse(myX+5+18, myY+5-23, 4,4);
			ellipse(myX+5+18, myY-23, 4,4);
			ellipse(myX+5+18, myY-5-23, 4,4);
		}
	}
}
