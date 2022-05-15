import 'package:apk_lafood/ui/LandingPage/LandingPage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _isFormKey = GlobalKey<FormState>();
  bool isLoading = false;

  final userTextBoxController = TextEditingController();
  final passTextBoxController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.symmetric(vertical: 150.0),
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        alignment: Alignment.center,
        child: Form(
          key: _isFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildLoginText(),
              _buildLoginWithUsername(),
              _buildLoginWithpass(),
              _btnLogin(),
            ],
          ),
        ),
      )),
    );
  }

  Widget _buildLoginText() {
    return Container(
      margin: EdgeInsets.only(bottom: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Text login
          Container(
            child: Text(
              "LAFOOD",
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.w500,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginWithUsername() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: "Username",
            hintText: "Masukan username",
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              color: Colors.black,
            )),
        // maxLength: 12,
        keyboardType: TextInputType.name,
        controller: userTextBoxController,
        autofocus: true,
        validator: (value) {
          if (value!.isEmpty) {
            return "Username tidak boleh kosong";
          } else if (value.length < 6) {
            return "Username telalu pendek";
          } else if (value.length > 12) {
            return "Username terlalu panjang";
          }
        },
      ),
    );
  }

  Widget _buildLoginWithpass() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Password",
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        controller: passTextBoxController,
        autofocus: true,
        validator: (value) {
          if (value!.isEmpty) {
            return "Password tidak boleh kosong";
          } else if (value.length < 6) {
            return "Password terlalu pendek";
          } else if (value.length > 12) {
            return "Password terlalu panjang";
          }
          //  kode ok
        },
      ),
    );
  }

  Widget _btnLogin() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          child: Text(
            "Login",
          ),
          onPressed: () {
            var validate = _isFormKey.currentState!.validate();

            if (validate) {
              Navigator.of(context)
                  .pushReplacement(new MaterialPageRoute(builder: (_) {
                return LandingPage();
              }));
            }
            return null;
          }),
    );
  }
}
