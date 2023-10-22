
import 'package:flutter/material.dart';
import 'package:pageview/home.dart';

class HomescreenWidget extends StatefulWidget {
  const HomescreenWidget({Key? key}) : super(key: key);

  @override
  _HomescreenWidgetState createState() => _HomescreenWidgetState();
}

class _HomescreenWidgetState extends State<HomescreenWidget> with SingleTickerProviderStateMixin{
  AnimationController? _controller;
  // ignore: unused_field
  Animation? _colorAnimation;

  bool isFav = false;
 


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this, );
      _controller!.addListener(() {
      setState(() {
        print(_controller!.value);
        print(_colorAnimation!.value);
      });
    });
     _controller!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
         isFav = true;
      } else if (status == AnimationStatus.dismissed) {
        isFav = false;
      }
    });

    _colorAnimation = ColorTween(begin: Colors.white, end: Colors.redAccent.shade200).animate(_controller!);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        // key: scaffoldKey,
        backgroundColor: Colors.white,
        body: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          child: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 388,
                                    height: 150,
                                    decoration: const BoxDecoration(
                                      color:Colors.white,
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.990, -0.90),
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: 
                                            Image.asset(
                                                'assets/image.png',
                                                width: 104,
                                                height: 122,
                                                fit: BoxFit.fill,
                                              ),
                                          ),
                                        ),
                                         Align(
                                          alignment:
                                              AlignmentDirectional(-0.95, -0.84),
                                          child: IconButton(
                                            icon: Icon(Icons.arrow_back_ios_rounded),
                                            color: Colors.black,
                                            iconSize: 20, onPressed: () { 
                                                Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePageWidget()));
                                             },
                                          ),
                                        ),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional(-0.07, -0.73),
                                          child: Text(
                                            'Search Products',
                                            style: TextStyle(
                                                  fontFamily: 'Readex Pro',
                                                  color: Color(0xFF8E8E8E),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional(0.98, 0.30),
                                          child: Icon(
                                            Icons.add_circle_outline_sharp,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.31),
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                40, 0, 70, 0),
                                            child: TextFormField(
                                              
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    TextStyle(),
                                                hintStyle:
                                                    TextStyle(),
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color:
                                                        Colors.black87,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color:
                                                        Colors.black87,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color:
                                                       Colors.white,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color:
                                                        Colors.red,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                              style: const TextStyle(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.normal,
                                                  )
                                              // validator: _model
                                              //     .textControllerValidator
                                              //     .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional(-0.72, 0.22),
                                          child: Icon(
                                            Icons.search_off,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 391,
                          height: 649,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Stack(
                            children: [
                              const Align(
                                alignment: AlignmentDirectional(-0.83, -0.98),
                                child: Text(
                                  'Found \n10 Results',
                                    style: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.75, -0.66),
                                child: Container(
                                  width: 141,
                                  height: 207,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 5, 0, 5),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                'assets/image.png',
                                                width: 104,
                                                height: 122,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 20),
                                        child: Text(
                                          'Lucky kade plant',
                                          style: TextStyle(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 12,
                                              ),
                                        ),
                                      ),
                                      const Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                      20, 0, 0, 0),
                                              child: Text(
                                                '\$27',
                                                style:TextStyle(),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 20, 0),
                                            child: Icon(
                                              Icons.favorite,
                                              color:Colors.black,
                                              size: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.80, -0.53),
                                child: Container(
                                  width: 141,
                                  height: 217,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 5, 0, 5),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                'assets/image2.png',
                                                width: 104,
                                                height: 122,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 20),
                                        child: Text(
                                          'Lucky Jade Plant',
                                          style:TextStyle(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 12,
                                              ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                      20, 0, 0, 0),
                                              child: Text(
                                                '\$20',
                                                style: TextStyle(),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                13, 0, 20, 0),
                                            child: IconButton(
                                              icon:  Icon(Icons.favorite_outlined),
                                              color: _colorAnimation!.value,
                                              onPressed: () {
                                               isFav ? _controller!.reverse() : _controller!.forward(); 
                                              },
                                              // size: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.75, 0.58),
                                child: Container(
                                  width: 141,
                                  height: 207,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 5, 0, 5),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                'assets/image3.png',
                                                width: 102,
                                                height: 122,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 20),
                                        child: Text(
                                          'Lucky oage Plant',
                                          style: TextStyle(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 12,
                                              ),
                                        ),
                                      ),
                                      const Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                      20, 0, 0, 0),
                                              child: Text(
                                                '\$15',
                                                style: TextStyle(),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 20, 0),
                                            child: Icon(
                                              Icons.favorite,
                                              color:Colors.black,
                                              size: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.80, 0.38),
                                child: Container(
                                  width: 141,
                                  height: 207,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 0, 5),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                'assets/image.png',
                                                width: 104,
                                                height: 122,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 20),
                                        child: Text(
                                          'Lucky dage Olant',
                                          style: TextStyle(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 12,
                                              ),
                                        ),
                                      ),
                                      const Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                      20, 0, 0, 0),
                                              child: Text(
                                                '\$29',
                                                style: TextStyle(),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 20, 0),
                                            child: Icon(
                                              Icons.favorite_sharp,
                                              color:Colors.black,
                                              size: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.82, 1.43),
                                child: Container(
                                  width: 141,
                                  height: 207,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
