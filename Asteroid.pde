class Asteroid extends Floater
{
  private int aRotate = (int)(Math.random() * 10 ) - 5;
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
    corners = 8;
    int[] xA = {-60,-50,-30,-10,0,-10,-30,-50};
    int[] yA = {0,20,30,20,0,-20,-30,-20};
    xCorners = xA;
    yCorners = yA;
    myColor1 = 255;
    myColor2 = 20;
    myColor3 = 147;
    myCenterX = (int)(Math.random() * 500);
    myCenterY = (int)(Math.random() * 500);
    myDirectionX = 1;
    myDirectionY = 1;
    myPointDirection = 360;
  }
  public void move()
  {
    super.move();
    turn(aRotate);
  }
}
