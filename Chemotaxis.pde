 //declare bacteria variables here
 Bacteria[]fred;
 int x=300;
 int y=-100;
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(600,600);
 	background(255,255,255);
 	fred=new Bacteria[1000];
 	for(int i=0;i<fred.length;i++){
 		fred [i]=new Bacteria();
 	}
 }   
 void draw()   
 {  
 	background(255,255,255);  
 	for(int i=0;i<fred.length;i++){
 		fred[i].move();
 		fred[i].show(); 
 	}
 }
 
 class Bacteria    
 {     
 	int myX,myY,myColor;
	Bacteria(){
		myX=(int)(Math.random()*600);
		myY=(int)(Math.random()*200);
		myColor=(int)(Math.random()*6+1);
	}
	void move(){
		myX=myX+(int)((Math.random()*10)-5);
		myY=myY+(int)((Math.random()*10)-5);
	}
	void show(){
		if(myColor==1){
			fill(132,194,194);
		}
		if(myColor==2){
			fill(90, 144, 199);
		}
		if(myColor==3){
			fill(109, 116, 189);
		}
		if(myColor==4){
			fill(109, 189, 154);
		}
		if(myColor==5){
			fill(188, 109, 189);
		}
		if(myColor==6){
			fill(111, 179, 158);
		}
		ellipse(myX,myY,20,40);
	}
 }    