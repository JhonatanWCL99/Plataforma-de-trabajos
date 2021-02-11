import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plataforma_trabajos/pallete.dart';
import 'package:plataforma_trabajos/widgets/widgets.dart';

class CreateNewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff5DBFA6),
            elevation: 0,
            title: Text(
              'Registro',
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.1,
                ),
                Stack(
                  children: [
                    Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: CircleAvatar(
                            radius: size.width * 0.14,
                            backgroundColor: Colors.grey[400].withOpacity(
                              0.4,
                            ),
                            child: Icon(
                              FontAwesomeIcons.userCircle,
                              color: kWhite,
                              size: size.width * 0.20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.08,
                      left: size.width * 0.56,
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: kGreen,
                          shape: BoxShape.circle,
                          border: Border.all(color: kWhite, width: 2),
                        ),
                        child: Icon(
                          FontAwesomeIcons.arrowUp,
                          color: kWhite,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Column(
                  children: [
                    TextInputField(
                      icon: FontAwesomeIcons.pencilAlt,
                      hint: 'Nombres',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    TextInputField(
                      icon: FontAwesomeIcons.pencilAlt,
                      hint: 'Apellidos',
                      inputAction: TextInputAction.next,
                    ),
                    TextInputField(
                      icon: FontAwesomeIcons.pencilAlt,
                      hint: 'Direccion',
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInput(
                      icon: FontAwesomeIcons.pencilAlt,
                      hint: 'Telefono',
                      inputAction: TextInputAction.done,
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    RoundedButton(buttonName: 'Continuar'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
