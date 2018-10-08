class ThankYou
{
 int a,b;
 public ThankYou(int x,int y)                  //PM
 {
  a=x;
  b=y;
  System.out.println("Parameterized Constructor");
 }
 public ThankYou()
{
  a = 100;
  b = 12;
 System.out.println("Non-Parameterized Constructor.");     //NPM
 }
 public void display()
 {
 System.out.println("Values of a and b : " +a+" "+b);
 }
 public static void main(String arr[])
{
 ThankYou ob = new ThankYou(12,10);
  ob.display();
 ThankYou obj = new ThankYou();
  obj.display();
}
}