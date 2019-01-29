//An attempt to replicate kaguya backgrounds
PImage kagface;
void setup(){
  size(640,360);
background(255);
KaguyaSquare temp = new KaguyaSquare(ksize,rando,color2,initsize);
kagface = loadImage("HowCute.png");
kagface.resize(0,height + 20);
}
//A slightly randomized square shape. It is meant to be drawn from the center, so don't forget to clean your inputs with a good good translate before making them!.
class KaguyaSquare{
  //sets the kaguyasquare's size. 
  float size =1;
  
  //sets the kaguyasquare's color. Iterate between black and white!
  color squarecolor = color(0);
  
  //stores the actual vertices of the kaguyasquare
  float[] vertices;
  
  //the constructor for kaguyasquare requires a size multiplier and a randomizer element
  public KaguyaSquare(float sizing, float randomizer,color squareset,float initsize){
    float[] vertexes = new float[8];
    vertexes[0] = sizing/2+random(-randomizer,randomizer);
    vertexes[1] = sizing/2+random(-randomizer,randomizer);
    vertexes[2] = sizing/2+random(-randomizer,randomizer);
    vertexes[3] = -sizing/2+random(-randomizer,randomizer);
    vertexes[4] = -sizing/2+random(-randomizer,randomizer);
    vertexes[5] = -sizing/2+random(-randomizer,randomizer);
    vertexes[6] = -sizing/2+random(-randomizer,randomizer);
    vertexes[7] = sizing/2+random(-randomizer,randomizer);
    vertices = vertexes;
    squarecolor = squareset;
    size = initsize;
  }
  
  //draws the square based on the vertices, also accounting for some "size" operator, so we can animate growing by smoothly lerping size.
  public void drawsquare(){
    beginShape();
    fill(squarecolor);
    noStroke();
    vertex(vertices[0]*size,vertices[1]*size);
    vertex(vertices[2]*size,vertices[3]*size);
    vertex(vertices[4]*size,vertices[5]*size);
    vertex(vertices[6]*size,vertices[7]*size);
    endShape();
  }
}

float returnLowest(float[] numbers) {
  float lowest = Float.POSITIVE_INFINITY;

  for(int i = 0; i < numbers.length; i++) {
    if(numbers[i] < lowest) {
      lowest = numbers[i];
    }
  }

  return lowest;
}


float returnHighest(float[] numbers) {
  float highest = Float.NEGATIVE_INFINITY;

  for(int i = 0; i < numbers.length; i++) {
    if(numbers[i] > highest) {
      highest = numbers[i];
    }
  }

  return highest;
}

float initsize = 10;
float ksize = 128;
float rando = 7;
int pow = 30;
color parity = pow-1;
float theta = 0.01;
color color1 =  color(0);
color color2 =  color(255);
KaguyaSquare temp = new KaguyaSquare(ksize,rando,color2,10*pow(0.9,2));


//have to use this weird array formatting because the normal way is throwing weird compiler errors
KaguyaSquare[] kaguya = {
  
new KaguyaSquare(ksize,rando,color1,10),
new KaguyaSquare(ksize,rando,color2,10*pow(0.9,1)),
new KaguyaSquare(ksize,rando,color1,10*pow(0.9,2)),
new KaguyaSquare(ksize,rando,color2,10*pow(0.9,3)),
new KaguyaSquare(ksize,rando,color1,10*pow(0.9,4)),
new KaguyaSquare(ksize,rando,color2,10*pow(0.9,5)),
new KaguyaSquare(ksize,rando,color1,10*pow(0.9,6)),
new KaguyaSquare(ksize,rando,color2,10*pow(0.9,7)),
new KaguyaSquare(ksize,rando,color1,10*pow(0.9,8)),
new KaguyaSquare(ksize,rando,color2,10*pow(0.9,9)),
new KaguyaSquare(ksize,rando,color1,10*pow(0.9,10)),
new KaguyaSquare(ksize,rando,color2,10*pow(0.9,11)),
new KaguyaSquare(ksize,rando,color1,10*pow(0.9,12)),
new KaguyaSquare(ksize,rando,color2,10*pow(0.9,13)),
new KaguyaSquare(ksize,rando,color1,10*pow(0.9,14)),
new KaguyaSquare(ksize,rando,color2,10*pow(0.9,15)),
new KaguyaSquare(ksize,rando,color1,10*pow(0.9,16)),
new KaguyaSquare(ksize,rando,color2,10*pow(0.9,17)),
new KaguyaSquare(ksize,rando,color1,10*pow(0.9,18)),
new KaguyaSquare(ksize,rando,color2,10*pow(0.9,19)),
new KaguyaSquare(ksize,rando,color1,10*pow(0.9,20)),
new KaguyaSquare(ksize,rando,color2,10*pow(0.9,21)),
new KaguyaSquare(ksize,rando,color1,10*pow(0.9,22)),
new KaguyaSquare(ksize,rando,color2,10*pow(0.9,23)),
new KaguyaSquare(ksize,rando,color1,10*pow(0.9,24))//,
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,25)),
//new KaguyaSquare(ksize,rando,color1,10*pow(0.9,26)),
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,27)),
//new KaguyaSquare(ksize,rando,color1,10*pow(0.9,28)),
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,29)),
//new KaguyaSquare(ksize,rando,color1,10*pow(0.9,30)),
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,31)),
//new KaguyaSquare(ksize,rando,color1,10*pow(0.9,32)),
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,33)),
//new KaguyaSquare(ksize,rando,color1,10*pow(0.9,34)),
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,35)),
//new KaguyaSquare(ksize,rando,color1,10*pow(0.9,36)),
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,37)),
//new KaguyaSquare(ksize,rando,color1,10*pow(0.9,38)),
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,39)),
//new KaguyaSquare(ksize,rando,color1,10*pow(0.9,40)),
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,41)),
//new KaguyaSquare(ksize,rando,color1,10*pow(0.9,42)) ,
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,43)),
//new KaguyaSquare(ksize,rando,color1,10*pow(0.9,44)),
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,45)),
//new KaguyaSquare(ksize,rando,color1,10*pow(0.9,46)),
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,47)),
//new KaguyaSquare(ksize,rando,color1,10*pow(0.9,48)),
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,49)),
//new KaguyaSquare(ksize,rando,color1,10*pow(0.9,50)),
//new KaguyaSquare(ksize,rando,color2,10*pow(0.9,51))


};




void draw(){

pushMatrix();
translate(width/4,height/3);
//rotate(theta);
//theta += 0.0005;
for(int i =0; i<=kaguya.length-1;i++){
kaguya[i].drawsquare();
}
popMatrix();

for(int i =0;i<=kaguya.length-1;i++){
kaguya[i].size +=0.01;
}


//float[] absolutes = {abs(kaguya[0].vertices[3]),
//    abs(kaguya[0].vertices[4]),
//    abs(kaguya[0].vertices[5]),
//    abs(kaguya[0].vertices[6]),
//  kaguya[0].vertices[0],
//kaguya[0].vertices[1],
//kaguya[0].vertices[2],
//kaguya[0].vertices[7]};

//    float min = returnLowest(absolutes);
  
  
if(frameCount%15==0)  {
    temp = kaguya[0];
    temp.size = initsize*pow(0.9,pow);
    
    for(int j =1;j<=kaguya.length-1;j++){
      kaguya[j-1] = kaguya[j];
    }
    
    kaguya[kaguya.length-1] = temp;
    pow+=1;
    parity+=1;
}
image(kagface,0,0);
if(frameCount>=830){
saveFrame("KaguyaSquares-####.gif");
}
if(frameCount==830+25*15){
  noLoop();
}
}
