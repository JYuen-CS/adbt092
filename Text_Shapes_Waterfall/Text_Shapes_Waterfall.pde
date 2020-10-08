Waves[] waves = new Waves[100];
Waves[] waves2 = new Waves[100];

float angle;

void setup() {
    size(800,800,P3D);    
    textSize(20);

  for (int i = 0; i < waves.length; i++) {
    waves[i] = new Waves(0,width/5);  
    waves2[i] = new Waves(575,width-100);  
  }
} 

void draw() {  
    background(0);

    for (int i = 0; i < waves.length; i++) {
    waves[i].down(); 
    waves[i].show(); 
    waves2[i].down(); 
    waves2[i].show();
    }
    
    fill(#2ED1F0);
    rect(0,0,width/3.5,height);
    fill(#2ED1F0);
    rect(575,0,width,height);
    
    noFill();
    translate(width/2, height/2, 0);
    rotateY(radians(angle));   
    ellipse(0,0,300,300);
    stroke(255);

    fill(255,0,0);
    rotateY(radians(angle));   
    text("City University", -20, 0, 20);

    angle = angle + 1; 
  }
  
