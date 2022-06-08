import 'package:flutter/material.dart';
import 'package:gaytan/login.dart';

class Rebe extends StatelessWidget {
  const Rebe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Hotel F25"),
        centerTitle: true,
        backgroundColor: Color(0x58D639EF),
        elevation: 8,
        shadowColor: Colors.purple,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/p.jpg',
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                '¡El mejor lugar para ti!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: Text(
                  'Registrate ahora y obten las mejores tarifas , nuestra misión de cumplir y satisfacer los requerimientos de sus huéspedes y visitantes.',
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: ElevatedButton(
                  child: Text("Iniciar Sesion"),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Color(0x58D639EF),
                    onSurface: Colors.grey,
                    elevation: 20,
                    minimumSize: Size(150, 50),
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Rbk())),
                    // Navigate to the Segunda screen using a named route.
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
