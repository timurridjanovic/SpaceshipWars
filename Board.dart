class Board {
  
  int x = 0;
  int y = 0;
  int width;
  int height;
 
  Cloud cloud1;
  Cloud cloud2;
  Cloud cloud3;
  Cloud cloud4;
  Cloud cloud5;
  Cloud cloud6;
  Plane plane;
  Jean jean;
  Jean jean1;
  Jean jean2;
  Jean jean3;
  Lazer lazer;
  
  CanvasRenderingContext2D context;
  
  Board(CanvasElement canvas) {
    context = canvas.getContext('2d');
    width = canvas.width;
    height = canvas.height;
    border();
    createClouds();
    plane = createPlane();
    jean = createJean();
    lazer = createLazer();
    document.window.setInterval(redraw, 4);
  }
  
  void border() {
    context.beginPath();
    context.fillStyle = "lightBlue";
    context.rect(x, y, width, height);
    context.fillRect(x, y, width, height);
    context.closePath();
    context.stroke();
  }
  
  void createClouds() {
    cloud1 = new Cloud(this, 100, -20, 70, 70);
    cloud2 = new Cloud(this, 600, -293, 70, 70);
    cloud3 = new Cloud(this, 800, -90, 70, 70);
    cloud4 = new Cloud(this, 500, -170, 70, 70);
    cloud5 = new Cloud(this, 700, -240, 70, 70);
    cloud6 = new Cloud(this, 300, -350, 70, 70);
  }
  
  Plane createPlane() {
    return new Plane(this, 350, 100, 70, 70);
  }
  
  Lazer createLazer() {
    return new Lazer(this, 20, 20, 3, 50, jean1, jean2, jean3);  
  }
  
  Jean createJean() {
    jean1 = new Jean(this, 100, 100, 80, 80);
    jean2 = new Jean(this, 600, -293, 80, 80);
    jean3 = new Jean(this, 300, -90, 80, 80);
  }
  
  void drawClouds() {
    cloud1.draw();
    cloud2.draw();
    cloud3.draw();
    cloud4.draw();
    cloud5.draw();
    cloud6.draw();
  }
  
  void drawJeans() {
    jean1.draw();
    jean2.draw();
    jean3.draw();
  }
  
  void redraw() {
    clear();
    drawClouds();
    plane.draw();
    drawJeans();
    lazer.draw();
  }
  
  void clear() {
    context.clearRect(x, y, width, height);
    border();
  }

}
