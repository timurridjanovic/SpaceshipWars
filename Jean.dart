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
    imageData3 = document.query('#jean');
    imageData4 = document.query('#explosion');
    document.window.setInterval(move, 4);
  }
  
  void move() {
    y = y + 2;
    x = x + 2;
    random2 = (Math.random()*900).toInt();
 
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
    
    draw();
  }
  
  void draw() {
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