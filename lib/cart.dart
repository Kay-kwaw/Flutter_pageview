

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageCopyWidget extends StatefulWidget {
  const HomePageCopyWidget({Key? key}) : super(key: key);

  @override
  _HomePageCopyWidgetState createState() => _HomePageCopyWidgetState();
}

class _HomePageCopyWidgetState extends State<HomePageCopyWidget> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
 

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
   
  }



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.19, 1.08),
                child: Container(
                  width: 410,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xFF55E26E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      const Align(
                        alignment: AlignmentDirectional(0.69, -0.59),
                        child: Icon(
                          Icons.follow_the_signs_sharp,
                          color: Color(0xFFEDEDED),
                          size: 40,
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.71, -0.57),
                        child: Icon(
                          Icons.thermostat_auto,
                          color: Color(0xFFEDEDED),
                          size: 40,
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.03, -0.57),
                        child: Icon(
                          Icons.flare_outlined,
                          color: Color(0xFFEDEDED),
                          size: 40,
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.03, -0.15),
                        child: Text(
                          'Temperature',
                          style:
                             TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(0.68, -0.13),
                        child: Text(
                          'Pot',
                          style:
                             TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.71, -0.15),
                        child: Text(
                          'Height',
                          style:
                             TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(0.74, 0.08),
                        child: Text(
                          'Ceramic Pot',
                          style:
                              TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    fontSize: 8,
                                  ),
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.71, 0.09),
                        child: Text(
                          '30cm  -   33cm',
                          style:
                             TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    fontSize: 8,
                                  ),
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.04, 0.09),
                        child: Text(
                          '20%',
                          style:
                              TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    fontSize: 8,
                                  ),
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.70, 0.48),
                        child: Text(
                          'Total Price',
                          style: TextStyle(),
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.72, 0.73),
                        child: Text(
                          '\$12.99',
                          style:
                              TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.58, 0.77),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:Color(0xFF1A5924)
                          ),
                          onPressed: () {
                            print('Button pressed ...');
                          },
                           child: const Text("Add to Cart", style: TextStyle(
                            color: Colors.white
                           ),),
                           
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, -0.69),
                child: Container(
                  width: double.infinity,
                  height: 400,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                        child: PageView(
                          controller: controller,
                          scrollDirection: Axis.vertical,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Image.asset(
                                  'assets/image.png',
                                  width: 300,
                                  height: 200,
                                  // fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: Image.asset(
                                  'assets/image2.png',
                                  width: 300,
                                  height: 200,
                                  // fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/image3.png',
                                width: 300,
                                height: 200,
                                // fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.00, 1.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 16),
                          child: SmoothPageIndicator(
                                      count: 3,
                                      axisDirection: Axis.vertical,
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
                        )
                      )
                    ],
                  ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(-0.87, -0.98),
                child: Icon(
                  Icons.chevron_left_sharp,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(0.82, -0.98),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(-0.79, 0.22),
                child: Text(
                  'Lucky jade-plant',
                  style: TextStyle(
                        fontFamily: 'Readex Pro',
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(-0.50, 0.37),
                child: Text(
                  'Plants made your life with minimal and happy \nlove the plants more and enjoy life.',
                  style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF868686),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
