import 'package:flutter/material.dart';
import 'package:pageview/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  
 

  final scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  void dispose() {
  

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        3,
        (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Container(
                height: 280,
                child: Center(
                    child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.green),
                )),
              ),
            )
            );
    return GestureDetector(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: double.infinity,
                            height: 500,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 40),
                                  child: PageView(
                                   controller: controller,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                         "assets/image.png",
                                          width: 300,
                                          height: 191.25,
                                          fit: BoxFit.scaleDown,
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          'assets/image3.png',
                                          width: 300,
                                          height: 200,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          'assets/image2.png',
                                          width: 300,
                                          height: 200,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.00, 1.00),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 16),
                                    child: 
                                          SmoothPageIndicator(
                                      count: 3,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) async {
                                        await controller.animateToPage(
                                          i,
                                          duration: const Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      effect: WormEffect(
                                        spacing: 8,
                                        radius: 16,
                                        dotWidth: 16,
                                        dotHeight: 8,
                                        dotColor: Colors.grey.shade400,   
                                        activeDotColor: const Color(0xFF1A5924),
                                        paintStyle: PaintingStyle.fill,
                                      ), controller: controller,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 70),
                child: Text(
                  'Enjoy your\nLife with Plants',
                  style: TextStyle(
                        fontFamily: 'Noto Serif',
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                      
                ),
              ),
               IconButton(
                icon: const Icon(Icons.arrow_circle_right),
                color: const Color(0xFF1A5924),
                iconSize: 80, onPressed: () { 
                  Navigator.push(
    context, MaterialPageRoute(builder: (context) => const HomescreenWidget()));
                 },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
