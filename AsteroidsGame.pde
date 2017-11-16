Spaceship Destroyer;
Asteroid Banger;
Star[] Galaxy = new Star[800];
public void setup() 
{
  size(500, 500);
  Destroyer = new Spaceship();
  for ( int i = 0; i < Galaxy.length; i++ ) { Galaxy[i] = new Star(); }
}
public void draw() 
{
  background(0);
  Destroyer.show();
  Destroyer.move();
  for ( int j = 0; j < Galaxy.length; j++ ) { Galaxy[j].show(); }
  Banger.show();
}
public void keyPressed()
{
  if ( key == '4' ) { Destroyer.turn(-5); }
  if ( key == '6' ) { Destroyer.turn(5); }
  if ( key == '8' ) { Destroyer.accelerate(2); }
  if ( key == ' ' )
  {
    Destroyer.setX((int)(Math.random() * 500 ));
    Destroyer.setY((int)(Math.random() * 500 ));
    Destroyer.setDirectionX(0);
    Destroyer.setDirectionY(0);
    Destroyer.setPointDirection((int)(Math.random() * 360 ));
  }
}