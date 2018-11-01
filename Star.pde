class Star //note that this class does NOT extend Floater
{
  private int x;
  private int y;
  private int z;
  

  public Star() {
  	x = ((int)(Math.random() * 1200));
  	y = ((int)(Math.random() * 800));
    z = ((int)(Math.random() * 5));


  }


  public void show() {
    noStroke();
    if(Math.random() < 0.5){
      fill(255); 
      z = z + ((int)(Math.random() * 2));
      if(z > 5){
        z = 3;
      }
    }else{
      fill(0);
      z = z - ((int)(Math.random() * 2));
      if(z < 1){
        z = 3;
      }
    }
    ellipse(x,y,z,z);
    }
   
}