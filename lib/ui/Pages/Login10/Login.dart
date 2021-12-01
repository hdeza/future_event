import 'package:flutter/material.dart';
import 'package:nulti_auth/Pages/Login10/Signup.dart';
import 'package:nulti_auth/Pages/Login10/Widgets/TextFieldCustom.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(top: 185),
      physics: BouncingScrollPhysics(),
      children: [
        _Titulo(),
        SizedBox(height: 25),
        _EmailAndPassword(),
        SizedBox(height: 15),
        _BottonSignIn()
      ],
    ));
  }
}

class _BottonSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Color(0xff5511b0), borderRadius: BorderRadius.circular(50)),
      child: TextButton(
        child: Text('Iniciar',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        onPressed: () {},
      ),
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 25, top: 20),
      alignment: Alignment.centerRight,
      child: Text('Forgot Password?'),
    );
  }
}

class _EmailAndPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
              icono: Icons.mail_outline,
              type: TextInputType.emailAddress,
              texto: 'Correo'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.visibility_off,
              type: TextInputType.text,
              pass: true,
              texto: 'Contraseña'),
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
          Text('Login',
              style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold)),
          Text(' /', style: TextStyle(fontSize: 42, color: Colors.grey)),
          TextButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SignUp())),
              child: Text('Crear cuenta',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)))
        ],
      ),
    );
  }
}
