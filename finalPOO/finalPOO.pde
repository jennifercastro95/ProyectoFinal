//PROYECTOFINAL:JENNIFER PAOLA RAMIREZ CASTRO

//head
Personajes w;
Personajes b;
Personajes m;
Personajes j;
Personajes t;


Personajes J1;
Personajes J2;


int pantalla;

fondo f;
PFont font;
int turno =1;

void setup(){
  size(700,600);
   
  w = new Personajes(20,"woody",0);
  b = new Personajes(15,"buzz",1);
  m = new Personajes(10,"marciano",2);
  j = new Personajes(17,"Jessy",3);
  t = new Personajes(25,"tik-tock",4);
  
  f = new fondo();
  
  font = createFont("Arial",30);
  
  
}
void draw(){
  background(255);  
  
switch (pantalla){
case 0:
Pant1();
//pantallainicial
break;
case 1:
Pant2();
//jugador1
break;
case 2:
Pant3();
//jugador2
break;
case 3:
Pant4();
//batalla    
break;
case 4:
Pant5();
//conclusion
break;
 }
}



void keyPressed() {
  if(turno==1){
     fill(0);
     text("ataque J2:presiona (l)",400,490);
  if (key == 'a') {
    J2.vida -= J1.ataque;
    turno=2;
   
   }
  }
  
  if(turno==2){
     fill(0);
     text("ataque J1:presiona (a)",20,490);
    if(key == 'l') {
    J1.vida-= J2.ataque;
    turno=1;
    
   }
  }
  
}
