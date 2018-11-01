class Bullet extends Floater{

	public int getX() {
		return (int) myCenterX;
	}
	public void setX(int x) {
		myCenterX = x;
	}
	public int getY() {
		return (int) myCenterY;
	}
	public void setY(int y) {
		myCenterY = y;
	}
	public double getDirectionX() {
		return myDirectionX;
	}
	public void setDirectionX(double x) {
		myDirectionX = x;
	}
	public double getDirectionY() {
		return myDirectionY;
	}
	public void setDirectionY(double y) {
		myDirectionY = y;
	}
	public double getPointDirection() {
		return myPointDirection;
	}
	public void setPointDirection(int degrees) {
		myPointDirection = degrees;
	}


public Bullet(Spaceship ship) {
	myPointDirection = ship.getPointDirection();
	double dRadians = myPointDirection*(Math.PI/180);
	myDirectionX = 20 * Math.cos(dRadians) + ship.getDirectionX();
    myDirectionY = 20 * Math.sin(dRadians) + ship.getDirectionY();
   	myCenterY = ship.getY();
   	myCenterX = ship.getX();

 

   	
	
}

public void show() {
	fill(255,0,0);
	ellipse((float)myCenterX,(float)myCenterY,5,5);

}

public void move() {
	myCenterX = myCenterX + myDirectionX;
	myCenterY = myCenterY + myDirectionY;
}
}