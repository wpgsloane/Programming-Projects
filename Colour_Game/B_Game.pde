void game(){
  background(0);//black
  fill(255);
  rect(0,0,400,600);
  fill(colors[gnr]);
  textSize(100);
  textAlign(CENTER,CENTER);
  text(colorWords[rng],400, 300);
  textSize(25);
  fill(0);
  text("POINTS: "+points, 80,40);
}

void gameClicks(){
  if(mouseX<width/2){
    if(rng==gnr){
      rng=int(random(0,5));
      gnr=int(random(0,5));
      points=points+1;
    }
    else if (rng!=gnr){
      println(gameover);
      mode=gameover;
    } 
  }
  else if(mouseX>width/2){
    if(rng!=gnr){
      rng=int(random(0,5));
      gnr=int(random(0,5));
      points=points+1;
    }
    else {
      mode=gameover;

    }
  }
}
