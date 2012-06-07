class Plane {
   
  Board board;
  
  int x;
  int y;
  int width;
  int height;
  ImageElement explosionimage;
  ImageElement planeimage;
  
  bool hit = false;
  bool regeneration = false;
  
  ImageElement image;
  
  Plane(this.board, this.x, this.y, this.width, this.height) {
    document.on.mouseMove.add(onMouseMove);
    image = document.query('#spaceship');
    explosionimage = document.query('#explosion');
    draw();
  }
  
  void draw() {
    board.context.beginPath();
    if (hit) {
      board.context.drawImage(explosionimage, x, y, width, height);  
    } else {
      board.context.drawImage(image, x, y, width, height);
    //board.context.fillStyle = "black";
    //board.context.fillRect(x, y, width, height);
    board.context.closePath();
    board.context.stroke();
    }
    
    if (regeneration) {
      hit = false;
     }
   
   }
  
  void onMouseMove(MouseEvent event) {
    x = event.offsetX - 35;
    y = event.offsetY - 35;
  }
  
}
