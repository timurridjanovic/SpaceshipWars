class Board {
  
  int x = 0;
  int y = 0;
  int width;
  int height;
  
  Plane plane1;
  Lazer lazer;
  Cloud cloud1;
  Cloud cloud2;
  Cloud cloud3;
  Cloud cloud4;
  Jean jean;
  
  CanvasRenderingContext2D context;
  
  Board(CanvasElement canvas) {
    context = canvas.getContext('2d');
    width = canvas.width;
    height = canvas.height;
    border();
    createPlane();
    createLazer(jean);
    createCloud();
    createJean();
    document.window.setInterval(redraw, 3);
   
  }
  
  void border() {
    context.beginPath();
    context.fillStyle = "lightBlue";
    context.rect(x, y, width, height);
    context.fillRect(x, y, width, height);
    context.closePath();
    context.stroke();
  }
  
  void createCloud() {
    cloud1 = new Cloud(this, 100, 0, 70, 70);
    cloud2 = new Cloud(this, 500, -293, 70, 70);
    cloud3 = new Cloud(this, 800, -90, 70, 70);
    cloud4 = new Cloud(this, 200, -170, 70, 70);
  }
  
  void createPlane() {
    plane1 = new Plane(this, 350, 100, 50, 50);
  }
  
  void createLazer(Jean jean) {
    lazer = new Lazer(this, 20, 20, 3, 50, jean);  
  }
  
  void createJean() {
    jean = new Jean(this, 100, 100, 80, 80);
  }
  
  
  void redraw() {
    clear();
    plane1.draw();
    lazer.drawLazer();
    cloud1.drawCloud();
    cloud2.drawCloud();
    cloud3.drawCloud();
    cloud4.drawCloud();
    jean.drawJean();
  }
  
  void clear() {
    context.clearRect(x, y, width, height);
    border();
 
  }

}
