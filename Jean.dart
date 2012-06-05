class Jean {

Board board;
  
  int x;
  int y;
  int width;
  int height;
  double random2;
  
  bool direction2 = true;
  ImageElement imageData3;
  ImageElement imageData4;
  
  Jean(this.board, this.x, this.y, this.width, this.height) {
    
    imageData3 = document.query('#jean');
    document.window.setInterval(moveJean, 3);
  }
  
  void moveJean() {
    y++;
    x++;
    random2 = (Math.random()*900);
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
      direction2 = true;
      
    if (direction2)
      y=0;
      x=random2;
    }
  drawJean();
  }
  
  void drawJean() {
    board.context.beginPath();  
    board.context.drawImage(imageData3, x, y, width, height);
    board.context.closePath();
    board.context.stroke();
  }

}
