import 'package:flutter/cupertino.dart';

class Header extends StatelessWidget {
  final String headerText;
  const Header({super.key, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){Navigator.pop(context);},
          child: Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Back.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),),
        const SizedBox(width: 25),
        Text(
          headerText,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Poppins',
            fontSize: 21.97,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
            height: 1.5,
          ),
        )
      ],
    );
  }
}
