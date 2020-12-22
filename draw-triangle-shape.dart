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


  ////
  //// will convert this to custom painter after extracting it from clipper
  ////

class TestCustomPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 50, right: 26),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomPaint(
                  size: Size(60, 20),
                  painter: ShopsClipper(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomPaint(
                  size: Size(60, 20),
                  painter: ServicesClipper(),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 10),
                  child: CustomPaint(
                    size: Size(20, 60),
                    painter: HealthCareClipper(),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopsClipper extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(10, 0);
    path.lineTo(101, 0);
    path.quadraticBezierTo(111, 0, 111, 10);
    path.lineTo(111, 85);
    path.quadraticBezierTo(111, 95, 105, 100);
    path.lineTo(10, 168);
    path.quadraticBezierTo(0, 173, 0, 153);
    path.lineTo(0, 10);
    path.quadraticBezierTo(0, 0, 10, 0);

    var paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}

class ServicesClipper extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(149, 0);
    path.lineTo(240, 0);
    path.quadraticBezierTo(250, 0, 250, 10);
    path.lineTo(250, 153);
    path.quadraticBezierTo(250, 173, 240, 168);
    path.lineTo(145, 100);
    path.quadraticBezierTo(139, 95, 139, 85);
    path.lineTo(139, 10);
    path.quadraticBezierTo(139, 0, 149, 0);

    var paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}

class HealthCareClipper extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(10, 195);
    path.lineTo(120, 118);
    path.quadraticBezierTo(125, 113, 130, 118);
    path.lineTo(240, 195);
    path.quadraticBezierTo(250, 200, 250, 210);
    path.lineTo(250, 240);
    path.quadraticBezierTo(250, 250, 240, 250);
    path.lineTo(10, 250);
    path.quadraticBezierTo(0, 250, 0, 240);
    path.lineTo(0, 210);
    path.quadraticBezierTo(0, 200, 10, 195);

    var paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}
