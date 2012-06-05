class Jean {

Board board;
  
  int x;
  int y;
  int width;
  int height;
  int random2;
  
  bool reappear = true;
  bool visible = true;
  ImageElement imageData3;
  ImageElement imageData4;
  
  Jean(this.board, this.x, this.y, this.width, this.height) {
    imageData4 = document.query('#explosion');
    imageData3 = document.query('#jean');
    document.window.setInterval(moveJean, 3);
  }
  
  void moveJean() {
    y++;
    x++;
    random2 = (Math.random()*900).toInt();
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
      reappear = true;
    } else {
      reappear = false;
    }
      
    if (reappear) {
      visible = true;
      y = random2;
      x = random2;
    }
  drawJean();
  }
  
  void drawJean() {
    board.context.beginPath();
    if (visible) {
      board.context.drawImage(imageData3, x, y, width, height);  
    } else {
      board.context.drawImage(imageData4, x, y, width, height);
    }
    board.context.closePath();
    board.context.stroke();
  }
}