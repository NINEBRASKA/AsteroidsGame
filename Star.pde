class Star 
{
  private int myX, myY;
  public Star()
  {
    myX = (int)(Math.random() * 1000)-500;
    myY = (int)(Math.random() * 1000)-500;
  }
  public void show()
  {
    fill(255);
    ellipse(myX, myY, 4, 4);
  }
}
