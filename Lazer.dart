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
    }
  
  void onMouseDown(MouseEvent event2) {
    x = event2.offsetX + 25;
    y = event2.offsetY - 50;
    document.window.setInterval(drawLazer, 15);
  }
  
  void drawLazer() {
    y--;
    board.context.beginPath();
    board.context.fillStyle = "green";
    board.context.fillRect(x, y, width, height);
    board.context.closePath();
    board.context.stroke();
    
    if (x > jean.x && x < jean.x + jean.width && y > jean.y && y < jean.y + jean.height) {
      jean.visible = false;
    }
    
  //if (x = jean.x && y = jean.y) {
     // hit = true;
      
   // if (hit) {
     // board.context.beginPath();
     // board.context.drawImage(imageData4, x, y, width, height);
     // board.context.closePath();
     // board.context.stroke();
    //}
    }
  }


  
  
