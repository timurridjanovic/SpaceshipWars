class Lazer {
  
  Board board;
  
  int x;
  int y;
  int width;
  int height;
  bool hit = true;
  Jean jean;
  
  Lazer(this.board, this.x, this.y, this.width, this.height, this.jean) {
    document.on.mouseDown.add(onMouseDown);
    document.window.setInterval(draw, 8);
  }
  
  void onMouseDown(MouseEvent event2) {
    x = event2.offsetX + 25;
    y = event2.offsetY - 50; 
  }
  
  void draw() {
    y--;
    board.context.beginPath();
    board.context.fillStyle = "green";
    board.context.fillRect(x, y, width, height);
    board.context.closePath();
    board.context.stroke();
    
    if (x > jean.x && x < jean.x + jean.width && y > jean.y && y < jean.y + jean.height) {
      jean.visible = false;
    }
  }

}
  
  
