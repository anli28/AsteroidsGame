class Asteroid extends Floater{

private int speed;
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




Asteroid(){
	if(Math.random() < 0.5){
		speed = ((int)(Math.random() * 5));
	}else{
		speed = ((int)(Math.random() * 5)-6);
	}
	myDirectionX = ((int)(Math.random() * 10)-5);
    myDirectionY = ((int)(Math.random() * 10)-5);
   	myCenterY = ((int)(Math.random() * 800));
   	myCenterX = ((int)(Math.random() * 1200));
   	myPointDirection = 0;
   	myColor = 105;

   	corners = 11;
   	xCorners = new int[corners];
    yCorners = new int[corners];
   	xCorners[0] = 30;
   	yCorners[0] = 0;
   	xCorners[1] = 32;	    	
   	yCorners[1] = 10;
   	xCorners[2] = 30;
   	yCorners[2] = 25;
   	xCorners[3] = -10;
   	yCorners[3] = 25;
   	xCorners[4] = -20;
   	yCorners[4] = 27;
   	xCorners[5] = -30;
   	yCorners[5] = 0;
   	xCorners[6] = -28;
   	yCorners[6] = 0;
   	xCorners[7] = -29;	    	
   	yCorners[7] = -15;
   	xCorners[8] = -20;
   	yCorners[8] = -30;
   	xCorners[9] = 0;
   	yCorners[9] = -20;
   	xCorners[10] = 15;
   	yCorners[10] = -25;
   	




}

public void move() {
	super.move();
	turn(speed);
	     
}

}