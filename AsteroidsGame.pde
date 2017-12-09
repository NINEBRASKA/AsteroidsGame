Spaceship Destroyer;
ArrayList <Asteroid> Bangers = new ArrayList <Asteroid>();
Star[] Galaxy = new Star[800];
public void setup() 
{
  size(500, 500);
  Destroyer = new Spaceship();
  for ( int i = 0; i < Galaxy.length; i++ ) { Galaxy[i] = new Star(); }
  for( int l = 0; l < 5; l++) { Bangers.add(new Asteroid()); }
}
public void draw() 
{
  background(0);
  Destroyer.show();
  Destroyer.move();
  for ( int j = 0; j < Galaxy.length; j++ ) { Galaxy[j].show(); }
  for ( int l = 0; l < Bangers.size(); l++ ) 
  { 
    Bangers.get(l).show();
    Bangers.get(l).move();
    Bangers.get(l).setDirectionX( (int) (Math.random() * 2) - 1 );
    Bangers.get(l).setDirectionY( (int) (Math.random() * 2) - 1 );
    float d = dist( Destroyer.getX(), Destroyer.getY(), Bangers.get(l).getX(), Bangers.get(l).getY() );
    if ( d < 60 ) { Bangers.remove(l); }
  }
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
