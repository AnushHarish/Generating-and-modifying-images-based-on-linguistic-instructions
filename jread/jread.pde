import cbl.quickdraw.*;
QuickDraw qd, radio, table, monkey, tree, wall, clock, boat, water, rabbit, carrot, rain, man, cat, stairs, ant, cake, door, hat;
String a, b, c1, c2;
float end;
void setup() {
  //size(800, 600);
  fullScreen();
  background(255);
  stroke(50);
  radio = new QuickDraw(this, "radio.ndjson");
  table = new QuickDraw(this, "table.ndjson");
  monkey = new QuickDraw(this, "monkey.ndjson");
  tree = new QuickDraw(this, "tree.ndjson");
  wall = new QuickDraw(this, "wall.ndjson");
  clock = new QuickDraw(this, "clock.ndjson");
  boat = new QuickDraw(this, "boat.ndjson");
  water = new QuickDraw(this, "water.ndjson");
  rabbit = new QuickDraw(this, "rabbit.ndjson");
  carrot = new QuickDraw(this, "carrot.ndjson");
  man = new QuickDraw(this, "man.ndjson");
  rain = new QuickDraw(this, "rain.ndjson");
  cat = new QuickDraw(this, "cat.ndjson");
  stairs = new QuickDraw(this, "stairs.ndjson");
  ant = new QuickDraw(this, "ant.ndjson");
  cake = new QuickDraw(this, "cake.ndjson");
  door = new QuickDraw(this, "door.ndjson");
  hat = new QuickDraw(this, "hat.ndjson");
}
void draw() {
  endUpdate();
  String[] lines=loadStrings("stre.txt");
  a = lines[0];
  b = lines[1];
  //printArray(lines);
  String[] arrofstr= a.split(" ");
  //for (String c : arrofstr)
  //  System.out.println(c);
  //for(int i=0; i<arrofstr.length;i++)
  //{
  //  String c=arrofstr[i] ;
  //  println(c);
  //}
  String c1=arrofstr[0];
  String c2=arrofstr[1];
  //println(c1);
  //println(c2);
  //println(b);
  if (b.equals("is") || b.equals("on") || b.equals("above") || b.equals("in") || b.equals("with") || b.equals("towards") || b.equals("outside"))
  {
    if (c1.equals("radio") || c2.equals("radio"))
    { 
      radio.create(300, 305, 75, 75, end);
      //end = end +0.001;
    } 
    if (c1.equals("table") || c2.equals("table"))
    {
      table.create(300, 360, 200, 100, end);
      //end = end +0.001;
    }
    if ( c1.equals("monkey") || c2.equals("monkey"))
    {
      monkey.create(580, 310, 75, 75, end);
    }
    if (c1.equals("tree") || c2.equals("tree"))
    {
      tree.create(550, 550, 300, 500, end);
      //end = end +0.001;
    }
    if (c1.equals("wall") || c2.equals("wall"))
    {
      wall.create(650, 500, 800, 800, end);
      //end = end +0.001;
    }
    if (c1.equals("clock") || c2.equals("clock"))
    {
      clock.create(580, 310, 75, 75, end);
      //end = end +0.001;
    }
    if (c1.equals("boat") || c2.equals("boat"))
    {
      boat.create(580, 500, 150, 150, end);
      //end = end +0.001;
    }
    if (c1.equals("water") || c2.equals("water"))
    {
      water.create(500, 900, 2000, 1000, end);
      //end = end +0.001;
    }
    if (c1.equals("rabbit") || c2.equals("rabbit"))
    {
      rabbit.create(450, 400, 300, 300, end);
      //end = end +0.001;
    }
    if (c1.equals("carrot") || c2.equals("carrot"))
    {
      carrot.create(300, 500, 75, 75, end);
      //end = end +0.001;
    }
    if (c1.equals("rain") || c2.equals("rain"))
    {
      rain.create(750, 300, 600, 600, end);
      //end = end +0.001;
    }
    if (c1.equals("man") || c2.equals("man"))
    {
      man.create(580, 650, 75, 75, end);
      //end = end +0.001;
    }
    if (c1.equals("cat") || c2.equals("cat"))
    {
      cat.create(1300, 400, 100, 100, end);
      //end = end +0.001;
    }
    if (c1.equals("stairs") || c2.equals("stairs"))
    {
      stairs.create(1100, 700, 400, 500, end);
      //end = end +0.001;
    }
    if ( c1.equals("ant") || c2.equals("ant"))
    {
      ant.create(1000, 500, 100, 100, end);
    }
    if ( c1.equals("cake") || c2.equals("cake"))
    {
      cake.create(580, 400, 300, 300, end);
    }
    if ( c1.equals("door") || c2.equals("door"))
    {
      door.create(1000, 600, 200, 200, end);
    }
  } 
  else if (b.equals("below"))
  {
    if (c1.equals("radio") || c2.equals("radio"))
    {
      radio.create(300, 360, 75, 75, end);
      //end = end +0.001;
    } 
    if (c1.equals("hat") || c2.equals("hat"))
    {
      hat.create(300, 360, 60, 60, end);
      //end = end +0.001;
    } 
    if (c1.equals("table") || c2.equals("table"))
    {
      table.create(300, 305, 200, 100, end);
      //end = end +0.001;
    }
  }
}
void endUpdate() {
  if (end<=0.99) {
    end=end+0.01;
  } else {
    return;
  }
}
