///
///A class that extends custom painter for using paint and drawpath function
///to create custom shape
///
class DrawTriangleShape extends CustomPainter {
  Paint painter;//painter is a brush 

  DrawTriangleShape() {
    painter = Paint()//this will draw the below overide method function code or path 
      ..color = Colors.white
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {//canvas is used for drawing purpose its like a page on which we want to draw something and Size is its height or width
    var path = Path();//A path is a direction on which we want to draw something

    path.moveTo(size.width / 2, 0);//this will move the x to the mid point on the canvas i:e moveTo(x,y)
    path.lineTo(0, size.height);//it will create a line which will goes to canvas heigth or end but not center it will goes to default pont 
    path.lineTo(size.height, size.width);//similarly its for horizontal line purpose
    path.close();//close will finally atatch the ending pont with the start pont 

    canvas.drawPath(path, painter);//and finally once ur path selection is done then its time to draw the path using canvas.drawpath()
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


///
///Now in order to use this above custom painter widget all u have to do is to wrap it inside a parent widget called CUSTOMPAINT
///
CustomPaint(
size:Size(20,20),//height,width of canvas
painter:DrawTriangleShape()
)
