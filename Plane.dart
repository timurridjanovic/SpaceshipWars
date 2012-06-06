class Plane {
   
  Board board;
  
  int x;
  int y;
  int width;
  int height;
  
  ImageElement image;
  
  Plane(this.board, this.x, this.y, this.width, this.height) {
    document.on.mouseMove.add(onMouseMove);
    image = document.query('#spaceship');
    draw();
  }
  
  void draw() {
    board.context.beginPath();
    //board.context.fillStyle = "black";
    //board.context.fillRect(x, y, width, height);
    board.context.drawImage(image, x, y, width, height);
    board.context.closePath();
    board.context.stroke();
    }
  
  void onMouseMove(MouseEvent event) {
    x = event.offsetX - 35;
    y = event.offsetY - 35;
  }
  
}
