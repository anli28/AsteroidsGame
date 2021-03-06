class Spaceship extends Floater {


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


	public Spaceship() {
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myCenterY = 350;
    	myCenterX = 500;
    	myPointDirection = 0;
    	myColor = color(0,255,0);


    	corners = 4;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = 5;
    	yCorners[0] = 0;
    	xCorners[1] = -8;
    	yCorners[1] = -8;
    	xCorners[2] = -2;
    	yCorners[2] = 0;
    	xCorners[3] = -8;
    	yCorners[3] = 8;
        
        
}


    public void move ()  
  {      
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

}
