#import('dart:html');
#source('Board.dart');
#source('Plane.dart');
#source('Lazer.dart');
#source('Cloud.dart');
#source('Jean.dart');

void main() {
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
}