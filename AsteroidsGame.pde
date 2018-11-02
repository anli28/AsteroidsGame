Spaceship ship = new Spaceship();
Orb bobby = new Orb();
Star[] stars = new Star[200];
ArrayList<Asteroid> aster = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();


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
	for(int i = 0; i < 15; i++){
		aster.get(i).show();
		aster.get(i).move();
	}
	for(int i = 0; i < bullets.size(); i++){
		bullets.get(i).show();
		bullets.get(i).move();
	}	
	ship.show(); 
	ship.move();
	bobby.show();
	bobby.move();

}

public void keyPressed() {
	if(key == 'w'){
		ship.accelerate(0.5);
	}
	if(key == 'a'){
		ship.turn(-15);
	}
	if(key == 's'){
		ship.accelerate(-0.5);
	}
	if(key == 'd'){
		ship.turn(15);
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
	}
}



