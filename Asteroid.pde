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
   	xCorners[0] = 35;
   	yCorners[0] = 5;
   	xCorners[1] = 35;	    	
   	yCorners[1] = 15;
   	xCorners[2] = 35;
   	yCorners[2] = 30;
   	xCorners[3] = -15;
   	yCorners[3] = 30;
   	xCorners[4] = -25;
   	yCorners[4] = 32;
   	xCorners[5] = -35;
   	yCorners[5] = 5;
   	xCorners[6] = -33;
   	yCorners[6] = 5;
   	xCorners[7] = -34;	    	
   	yCorners[7] = -20;
   	xCorners[8] = -25;
   	yCorners[8] = -35;
   	xCorners[9] = 5;
   	yCorners[9] = -25;
   	xCorners[10] = 20;
   	yCorners[10] = -30;
   	




}

public void move() {
	super.move();
	turn(speed);
	     
}

}