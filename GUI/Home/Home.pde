import controlP5.*;

ControlP5 cp5;

int myColor = color(255);

int c1,c2;

float n,n1;


void setup() {
  size(400,600);
  noStroke();
  cp5 = new ControlP5(this);

  //Declare, and define buttons
  cp5.addButton("Start")
     .setValue(0)
     .setPosition(100,100)
     .setSize(200,19)
     ;
  
  //Adding more buttons
  cp5.addButton("Train")
     .setValue(100)
     .setPosition(100,120)
     .setSize(200,19)
     ;
     
  cp5.addButton("Memory")
     .setPosition(100,140)
     .setSize(200,19)
     .setValue(0)
     ;

  cp5.addButton("About")
     .setValue(128)
     .setPosition(140,300)
     .updateSize()
     ;
     
  cp5.addButton("Quit")
     .setValue(128)
     .setPosition(210,300)
     .updateSize()
     ;

}

void draw() {
  background(myColor);
  myColor = lerpColor(c1,c2,n);
  n += (1-n)* 0.1; 
}

//Event Handler
public void controlEvent(ControlEvent theEvent) {
  println(theEvent.getController().getName());
  n = 0;
}

//Button events
public void Start(int theValue) {
  println("a button event from Start: "+theValue);
  c1 = c2;
  c2 = color(0,160,100);
}

public void Train(int theValue) {
  println("a button event from Train: "+theValue);
  c1 = c2;
  c2 = color(150,0,0);
}

public void Memory(int theValue) {
  println("a button event from Memory: "+theValue);
  c1 = c2;
  c2 = color(255,255,0);
}

public void About(int theValue) {
  println("a button event from About: "+theValue);
  c1 = c2;
  c2 = color(0,0,150);
}

public void Quit(int theValue) {
  println("a button event from Quit: "+theValue);
  c1 = c2;
  c2 = color(0,0,0);
}