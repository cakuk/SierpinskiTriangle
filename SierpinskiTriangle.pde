public void setup()
{
	size(500, 500);
	background(180, 150, 250);
}
public void draw()
{
	sierpinski(0, 500, 500);
}
public void mouseDragged()
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 15) {
		noStroke();
		fill((int)(Math.random() * 100) + 105, (int)(Math.random() * 50) + 105, (int)(Math.random() * 100) + 155);
		triangle(x, y, x + (len / 2), y - len, x + len, y);
	} else {
		sierpinski(x, y, len / 2);
		sierpinski(x + (len / 2), y, len / 2);
		sierpinski(x + (len / 4), y - (len / 2), len / 2);
	}
}