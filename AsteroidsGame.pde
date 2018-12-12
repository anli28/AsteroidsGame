private boolean keyW = false;
private boolean keyA = false;
private boolean keyS = false;
private boolean keyD = false;
private boolean keySlash = false;
private boolean keySpace = false;
private int count = 0;


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
	for(int i = 0; i < 50; i++){
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
			if(dist(aster.get(i).getX(),aster.get(i).getY(),bullets.get(z).getX(),bullets.get(z).getY()) < 35){
				aster.remove(i);
				bullets.remove(z);
				break;

				
			}


		}


	}



	for(int i = 0; i < aster.size(); i++){
		if(dist(aster.get(i).getX(),aster.get(i).getY(),ship.getX(),ship.getY()) < 45){
			aster.remove(i);
			health = health - 15;
	}
}

  fill(255, 255, 255);
  rect(20, 10, 300, 30);
  fill(127, 247, 0);
  rect(20, 10, health, 30);

  if(health < 75){
  	bobby.show();
  	bobby.move();
  	bobby.setX(ship.getX() + 20);
  	bobby.setY(ship.getY());
  	sarah.show();
  	sarah.move();
  	sarah.setX(ship.getX() - 20);
  	sarah.setY(ship.getY());
  }

  if(health < 0){
  	background(255);
  	textSize(200);
  	fill(0);
  	text("Game Over", 60, 400);


  }


if(aster.size() == 0) {
	count++;
	for(int i = 0; i < 75; i++){
		aster.add(new Asteroid());
		for(int z = 0; z < aster.size(); z++){
			aster.get(z).show();
			aster.get(z).move();
		}
	}
}

if(aster.size() == 0 && count == 1) {
	count++;
	for(int i = 0; i < 150; i++){
		aster.add(new Asteroid());
		for(int z = 0; z < aster.size(); z++){
			aster.get(z).show();
			aster.get(z).move();
		}
	}
}

if(count > 2){
	background(255);
  	textSize(150);
	fill(0);
  	text("Lay Yang Zuo", 80, 400);
}


  if(keyW == true){
  	ship.accelerate(0.3);
  	bobby.accelerate(0.3);
  }
  if(keyA == true){
  	ship.turn(-5);
  }
  if(keyS == true){
  	ship.accelerate(-0.3);
  	bobby.accelerate(-0.3);
  }
  if(keyD == true){
  	ship.turn(5);
  }
  if(keySpace == true){
  	bullets.add(new Bullet(ship));
	if(health < 75){
		bullets.add(new Bullet(bobby));
		bullets.add(new Bullet(sarah));
  }
}
  
	


}

public void keyPressed() {
	if(key == 'w'){
		keyW = true;
	}
	if(key == 'a'){
		keyA = true;
	}
	if(key == 's'){
		keyS = true;
	}
	if(key == 'd'){
		keyD = true;
	}
	if(key == '/'){
		ship.setX((int)(Math.random() * 1000));
		ship.setY((int)(Math.random() * 800));
		ship.setDirectionX(0);
		ship.setDirectionY(0);
		ship.setPointDirection((int)(Math.random() * 360));
		

	}
	if(key == ' '){
		// keySpace = true;
		bullets.add(new Bullet(ship));
	if(health < 75){
		bullets.add(new Bullet(bobby));
		bullets.add(new Bullet(sarah));
	}
  }
}

public void keyReleased() {
	if(key == 'w'){
		keyW = false;
	}
	if(key == 'a'){
		keyA = false;
	}
	if(key == 's'){
		keyS = false;
	}
	if(key == 'd'){
		keyD = false;
	}
	if(key == '/'){
		keySlash = false;
	}
	if(key == ' '){
		keySpace = false;
	}
}

	



