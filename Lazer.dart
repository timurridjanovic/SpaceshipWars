class Lazer {
  
  Board board;
  
  int x;
  int y;
  int width;
  int height;
  bool hit = true;
  Jean jean1;
  Jean jean2;
  Jean jean3;
  
  Lazer(this.board, this.x, this.y, this.width, this.height, this.jean1, this.jean2, this.jean3) {
    document.on.mouseDown.add(onMouseDown);
    document.window.setInterval(draw, 8);
  }
  
  void onMouseDown(MouseEvent event2) {
    x = event2.offsetX;
    y = event2.offsetY - 80; 
  }
  
  void draw() {
    y--;
    board.context.beginPath();
    board.context.fillStyle = "green";
    board.context.fillRect(x, y, width, height);
    board.context.closePath();
    board.context.stroke();
    
    if (x > jean1.x && x < jean1.x + jean1.width && y > jean1.y && y < jean1.y + jean1.height) {
      jean1.visible = false;
    }
    
    if (x > jean2.x && x < jean2.x + jean2.width && y > jean2.y && y < jean2.y + jean2.height) {
      jean2.visible = false;
    }
    
    if (x > jean3.x && x < jean3.x + jean3.width && y > jean3.y && y < jean3.y + jean3.height) {
      jean3.visible = false;
    }
  }
}

  

