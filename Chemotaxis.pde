Bacteria [] aden = new Bacteria [200];
int a = 0;
int c = 0;
 
 void setup()   
 {     
   size (750,750);
   for (int i = 0; i < aden.length; i++)
    aden[i] = new Bacteria(); 
     
 }   
 void draw()   
 {    
   background (0);
   for (int i = 0; i < aden.length; i++)
     {
      aden[i].walk();
      aden[i].show();
     }
   
 }  
 class Bacteria    
 {     
    
    int myX, myY, mySize;
    Bacteria() 
    {
      myX = (int) (Math.random()*751);
      myY = (int) (Math.random()*751);
      mySize = 15;
    }
    void walk ()
    {
      if(mouseX > myX)
       a = 2;
       if(mouseX < myX)
       a = 4;
       if(mouseY > myY)
       c = 2;
       if(mouseY < myY)
       c = 4;
       myX = myX + (int)(Math.random()*8)-a;
       myY = myY + (int)(Math.random()*8)-c;

    }
    void show () 
   {
     noStroke();
     fill ((int)(Math.random()*225)+200,(int)(Math.random()*225)+200, (int)(Math.random()*250)+240);
     ellipse (myX,myY,mySize,mySize);
     
   }
   
 }  
