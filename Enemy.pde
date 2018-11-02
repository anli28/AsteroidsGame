class Enemy extends Floater{

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




Enemy(){
	myDirectionX = ((int)(Math.random() * 10)-5);
    myDirectionY = ((int)(Math.random() * 10)-5);
   	myCenterY = ((int)(Math.random() * 800));
   	myCenterX = ((int)(Math.random() * 1200));
   	myPointDirection = 0;
   	

   




}

public void move() {
	super.move();
	if(myCenterX > ship.getX()){
		myCenterX = ship.getX() + 10;
	}
	if(myCenterX < ship.getX()){
		myCenterX = ship.getX() - 10;
	}
	if(myCenterY > ship.getY()){
		myCenterY = ship.getY() + 10;
	}
	if(myCenterY < ship.getY()){
		myCenterY = ship.getY() - 10;
	}
	     
}

public void show() {
	fill(255);
	ellipse((float)(myCenterX),(float)(myCenterY),10,10);
}

}