class Asteroid extends Floater
{
  private int aSpeed;
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}  
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;} 
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return myPointDirection;}
  public Asteroid()
  {
    aSpeed = (int)(Math.random() * 2 ) - 1;
  }
  public void move()
  {
    turn(aSpeed);
    super.move();
  }
  public void show()
  {
    fill(20,20,20);
    ellipse(250,250,10,10); 
  }  
}