import 'package:flutter/material.dart';
import 'package:gaytan/perfil.dart';

class Conclu extends StatelessWidget {
  const Conclu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0x00EEEEEE),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: Image.asset(
                          'assets/logo.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      'Recerva de habitacion',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: InkWell(
                      child: Icon(
                        Icons.list,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 420,
                decoration: BoxDecoration(
                  color: Color(0x1CEEEEEE),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 150),
                  child: Text(
                    'Como conclusion podemos decir que, cada uno de los ejercicios que hicimos en clase en el transcurso del curso, nos fueron de mucha ayuda en este ultimo proyecto, ya que se nos faciltaron los elementos para poder crear cada una de nuestras paginas. \nPor oytra parte, el desarrollo de la pagina fue un poco facil hasta cierto punto ya que solo pegamos los ejecicios que ya habiamos hecho anteriormente y de esta manera se creo la pagina y se desarrollo.',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: ElevatedButton(
                  child: Text("Perfil"),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Color(0x58D639EF),
                    onSurface: Colors.grey,
                    elevation: 20,
                    minimumSize: Size(80, 50),
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Perfil())),
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
