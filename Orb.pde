class Orb extends Floater{

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




Orb(){
	myDirectionX = ship.getDirectionX();
    myDirectionY = ship.getDirectionY();
   	myCenterY = ship.getY();
   	myCenterX = ship.getX();
   	myPointDirection = ship.getPointDirection();
   	

   




}

public void move() {
	super.move();
	if(myDirectionX > 6) {
      myDirectionX = 6;
      
    }
    if(myDirectionX < -6){
      myDirectionX = -6;
    }
    if(myDirectionY > 6){
      myDirectionY = 6;
    }   
    if(myDirectionY < -6){
      myDirectionY = -6;
    }         
}

public void show() {
	fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	ellipse((float)(myCenterX),(float)(myCenterY),15,15);
}

}