class Cloud {

  Board board;
  
  int x;
  int y;
  int width;
  int height;
  int random;
  
  bool reappear = true;
  ImageElement imageData2;
  
  Cloud(this.board, this.x, this.y, this.width, this.height) {  
    imageData2 = document.query('#cloud');
    document.window.setInterval(move, 4);
  }
  
  void move() {
    y++;
    random = (Math.random() * 900).toInt();
  
    if (y >= board.height) {
      reappear = true;
    } else {
      reappear = false;
    }
      
    if (reappear) {
      y = -random;
      x = random;
    }
    
    draw();
  }
  
  void draw() {
    board.context.beginPath();
    board.context.fillStyle = "white";   
    board.context.drawImage(imageData2, x, y, width, height);
    board.context.closePath();
    board.context.stroke();
  }

}
