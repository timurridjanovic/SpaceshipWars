class Cloud {

  Board board;
  
  int x;
  int y;
  int width;
  int height;
  double random;
  
  bool direction = true;
  ImageElement imageData2;
  
  Cloud(this.board, this.x, this.y, this.width, this.height) {
    
    imageData2 = document.query('#cloud');
    document.window.setInterval(moveCloud, 3);
  }
  
  void moveCloud() {
    y++;
    random = (Math.random()*900);
    //if (y <= 0) {
     // direction = true;
   // }
   // else if (y >= board.height - height) {
    //  direction = false;
   // }
    
   // if (direction)
   //   y++;
   // else 
    //  y--;
    if (y >= board.height) {
      direction = true;
      
    if (direction)
      y=0;
      x=random;
    }
  drawCloud();
  }
  
  void drawCloud() {
    board.context.beginPath();
    board.context.fillStyle = "white";   
    board.context.drawImage(imageData2, x, y, width, height);
    board.context.closePath();
    board.context.stroke();
  }

}
