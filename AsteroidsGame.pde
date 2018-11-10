Spaceship ship = new Spaceship();
Orb bobby = new Orb();
Orb sarah = new Orb();
Star[] stars = new Star[200];
ArrayList<Asteroid> aster = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();


public int health = 300;
public int x = 0;


public void setup() 
{
	size(1200,800);
	for(int i = 0; i < stars.length; i++){
		stars[i] = new Star();
	}
	for(int i = 0; i < 15; i++){
		aster.add(new Asteroid());
	}
	

	
}
public void draw() 
{
  	background(0);
	for(int i = 0; i < stars.length; i++){
		stars[i].show();
	}
	for(int i = 0; i < aster.size(); i++){
		aster.get(i).show();
		aster.get(i).move();
	}
	
	for(int i = 0; i < bullets.size(); i++){
		bullets.get(i).show();
		bullets.get(i).move();
	}	
	ship.show(); 
	ship.move();

	for(int i = 0; i < aster.size(); i++){
		for(int z = 0; z < bullets.size(); z++){
			if(dist(aster.get(i).getX(),aster.get(i).getY(),bullets.get(z).getX(),bullets.get(z).getY()) < 30){
				aster.remove(i);
				bullets.remove(z);
				break;

				
			}


		}


	}



	for(int i = 0; i < aster.size(); i++){
		if(dist(aster.get(i).getX(),aster.get(i).getY(),ship.getX(),ship.getY()) < 30){
			health = health - 5;
	}
}

  fill(255, 255, 255);
  rect(20, 10, 300, 30);
  fill(127, 247, 0);
  rect(20, 10, health, 30);

  if(health < 75){
  	bobby.show();
  	bobby.move();
  	bobby.setX(ship.getX() + 40);
  	bobby.setY(ship.getY());
  	sarah.show();
  	sarah.move();
  	sarah.setX(ship.getX() - 40);
  	sarah.setY(ship.getY());
  }

  if(health < 0){
  	background(255);

  }
  
	


}

public void keyPressed() {
	if(key == 'w'){
		ship.accelerate(0.5);
		bobby.accelerate(0.5);
	}
	if(key == 'a'){
		ship.turn(-20);
		bobby.turn(-20);
	}
	if(key == 's'){
		ship.accelerate(-0.5);
		bobby.accelerate(-0.5);
	}
	if(key == 'd'){
		ship.turn(20);
		bobby.turn(20);
	}
	if(key == '/'){
		ship.setX((int)(Math.random() * 1000));
		ship.setY((int)(Math.random() * 800));
		ship.setDirectionX(0);
		ship.setDirectionY(0);
		ship.setPointDirection((int)(Math.random() * 360));

	}
	if(key == ' '){
		bullets.add(new Bullet(ship));
		if(health < 75){
			bullets.add(new Bullet(bobby));
			bullets.add(new Bullet(sarah));
		}
	}
}



