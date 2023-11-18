import 'package:flutter/material.dart';
import 'package:vmd/utils/res.dart';

class ChatScreenWidget extends StatelessWidget {
  const ChatScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Stack(
            children: <Widget>[
              _buildLanguageContainer(
                text: 'हिंदी',
                fontSize: 20,
                color: const Color.fromRGBO(178, 194, 249, 1),
                position: const Offset(21, 102),
              ),
              _buildLanguageContainer(
                text: 'తెలుగు',
                fontSize: 24,
                color: const Color.fromRGBO(242, 242, 242, 1),
                position: const Offset(21, 194.37),
              ),
              _buildLanguageContainer(
                text: 'বাংলা',
                fontSize: 24,
                color: const Color.fromRGBO(242, 242, 242, 1),
                position: Offset(sizes!.width * 0.5256, 194.37),
              ),
              _buildLanguageContainer(
                text: 'தமிழ்',
                fontSize: 20,
                color: const Color.fromRGBO(242, 242, 242, 1),
                position: const Offset(21, 102),
                isRight: true,
              ),
              const Positioned(
                top: 30,
                left: 32,
                child: Text(
                  'folkComputing v2',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Poppins',
                    fontSize: 21.97,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                  ),
                ),
              ),
              Positioned(
                top: 25,
                right: 25,
                child: Container(
                  width: 48,
                  height: 38,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Logout.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                child: Row(
                  children: [
                    Container(
                      width: 51,
                      height: 41,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Microphone.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Container(
                      width: sizes!.width * 0.75,
                      height: 69.51,
                      padding: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: const Color.fromRGBO(242, 242, 242, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(217, 217, 217, 1),
                          width: 1.1,
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'type..',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(142, 142, 142, 1),
                            fontFamily: 'Poppins',
                            fontSize: 20.56,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 46,
                      height: 36,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Paperplane.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Chat Bubble 1
              Positioned(
                bottom: 240,
                right: 31,
                child: Container(
                  width: sizes!.width * 0.6,
                  height: 74,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(245, 247, 161, 1),
                  ),
                  child: const Text(
                    'मुझे पेट दर्द है',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                    ),
                  ),
                ),
              ),

              // Chat Bubble 2
              Positioned(
                bottom: 130,
                left: 31,
                child: Container(
                  width: sizes!.width * 0.6,
                  height: 74,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(184, 212, 255, 1),
                  ),
                  child: const Text(
                    'assistant typing...',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageContainer({
    required String text,
    required double fontSize,
    required Color color,
    required Offset position,
    bool isRight = false,
  }) {
    return Positioned(
      top: position.dy,
      left: isRight ? null : position.dx,
      right: isRight ? position.dx : null,
      child: Container(
        width: sizes!.width * 0.44,
        height: 70.63,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: color,
          border: Border.all(
            color: const Color.fromRGBO(255, 255, 255, 1),
            width: 1.1,
          ),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: const Color.fromRGBO(0, 0, 0, 1),
              fontFamily: 'Poppins',
              fontSize: fontSize,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
