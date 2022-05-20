PImage imagen,imagen4;
int Variante = 1;
PFont Fuente;
float tamanoimagenx;
float restar;
float tamanoimageny;
float posicionx;
float posiciony;
float sumar;
float escalar;
float trasladar;
String textogigante;
String estado;
float contador;
float movertexto;
void setup() {

  size(800, 600);
  imagen = loadImage ("Atlantishd.jpg");
  imagen4 = loadImage("simbolo.png");
  Fuente = loadFont ("Papyrus-Regular-50.vlw");
  textFont (Fuente);        

  contador=0;
 movertexto=200;
  posicionx=-575;
  posiciony=-200;
  sumar=0.5;
  tamanoimagenx=1920;
  tamanoimageny=1080;
  restar=1;
  

  trasladar=600;
  
  estado="sinatlantis";
}

void draw() {
  contador=contador+1 ;
  escalar=escalar+1;
println(contador);
  if (mousePressed) {
    frameCount=(0);
  }
  if(posicionx>-500){ posicionx=-500;
  estado="atlantis";
     tamanoimagenx=1769;
     tamanoimageny=930;
trasladar=trasladar-50;  

}
  posicionx=posicionx+sumar;
tamanoimagenx=tamanoimagenx-restar;
tamanoimageny=tamanoimageny-restar;
  image(imagen, posicionx, posiciony,tamanoimagenx,tamanoimageny);
  
  Variante = frameCount;
if(trasladar<-500){
  trasladar=-500;
  }
  

  fill(0);
  pushMatrix();
  
  
translate(0,trasladar+500);
noStroke();
rect(0,0,800,2000);
popMatrix();

if(estado=="atlantis"){
  fill(255);
if(contador>500 ){ movertexto=movertexto-1;
textSize(30);
 text (
    "\n\n Directed by:\n Gary Trousdale & Kirk Wise."+
    "\n\n Produced by : \n\n Don Hahn \n\n Hideharu Gomi \n\n Yosuke Asama"+
    "\n\n Screenplay by: \n\n Tab Murphy\n\n Naoko Takeuchi"+
    "\n\n Associate producer: \n\n Kendra Haaland  \n\n por Naoko Takeuchi"+
    "\n\n Art Director: \n\n David Ghoet"+
    "\n\n Produced by: \n\n Walt Disney Pictures."+
    "\n\n Montage: \n\n Shigenitsu Hamano \n\n Takashi Yanagida"+ 
    "\n\n Animation: \n\n TBA"+
    "\n\n Cast: \n\n Usagi Tsukino/Sailor Moon - Kotono Mitsuishi \n\n Ami Mizuno/Sailor Mercury - Hisako Kanemoto \n\n Rei Hino/Sailor Mars - Rina Sato \n\n Makoto Kino/Sairlo Jupiter - Mew Azama \n\n Minako Aino/Sailor Venus - Shizuka Ito \n\n Chibi-Usa/Sailor Chibi Moon - Misato Fukuen \n\n Haruka Tenoh/Sailor Uranus - Junko Minagawa \n\n Michiru Kaioh/Sailor Naptune - Sayaka Ohara \n\n Setsuna Meioh/Sailor Pluto - Ai Maeda \n\n Hotaru Tomoe/Sailor Saturn - Yukiyo Fujii \n\n Mamoru Chiba/Tuxedo Mask - Jouji Shibue \n\n Luna - Ryo Hirohashi \n\n Artemis - Taishi Murata \n\n Diana - Shoko Nakagawa \n\n Queen Nehelenia - Arai Nanao \n\n Zirconia - Naomi Watanabe \n\n Palla Palla/Sailor Pallas - Xanthe Huynh \n\n Jun Jun/Sailor Juno - Erika Ishii \n\n Cere Cere/ Sailor Ceres - Reina Ueda \n\n Ves Ves/Sailor Vesta - Rie Takahashi \n\n Pegasus/Helios - Yahitsugu Matsuoka \n\n Queen Serenity - Mami Koyama", 
    100,movertexto+500,600,2000);
    } 
     
  if(contador>200 && contador<500) {
    textSize(80);
text("ATLANTIS \n\n El imperio perdido",100,200);
  
  
    
}  } 
  fill (255, 255, 255, 0);
  stroke (random (255), random (255), random (255));

  image (imagen4, 750, 550, 60, 60);
  
  
 
  }  




void mousePressed() {
  float D = dist (mouseX, mouseY, 800, 600);
  int R = 120 / 2;
  if (D<R) {
    {   contador=0;
 movertexto=200;
  posicionx=-575;
  posiciony=-200;
  sumar=0.5;
  tamanoimagenx=1920;
  tamanoimageny=1080;
  restar=1;
  

  trasladar=600;
  
  estado="sinatlantis";
      //frameCount = (0);
    }
  }
}
