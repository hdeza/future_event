import 'package:flutter/material.dart';
import 'package:nulti_auth/ui/Pages/Login10/Login.dart';
import 'package:nulti_auth/ui/Pages/Login10/Widgets/TextFieldCustom.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(top: 130),
      physics: BouncingScrollPhysics(),
      children: [_Titulo(), SizedBox(height: 20), _TextField(), _Botton()],
    ));
  }
}

class _Botton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Color(0xff5511b0), borderRadius: BorderRadius.circular(50)),
      child: TextButton(
        child: Text('Crear Cuenta',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        onPressed: () {},
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
              icono: Icons.person, type: TextInputType.text, texto: 'Usuario'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.visibility_off,
              type: TextInputType.text,
              pass: true,
              texto: 'Contraseña'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.mail_outline,
              type: TextInputType.emailAddress,
              texto: 'Correo'),
          SizedBox(height: 15)
        ],
      ),
    );
  }
}

class _Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          TextButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => Login())),
            child: Text('Login',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
          ),
          Text('/', style: TextStyle(fontSize: 42, color: Colors.grey)),
          TextButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SignUp())),
              child: Text('Crear cuenta',
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)))
        ],
      ),
    );
  }
}
