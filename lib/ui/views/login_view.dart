import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:vinnenga/ui/widgets/button_submit.dart';
import 'package:vinnenga/utils/responsive_builder.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _passwordVisible;
  TextEditingController _email;
  TextEditingController _password;
  final _formKey = GlobalKey<FormState>();
  final _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  Widget _entryField(String title, String inputTitle,
      {bool isPassword = false,
      FormFieldValidator validator,
      ValueChanged onChanged,
      TextEditingController controller,
      TextInputType keyboardType,
      IconButton iconButton}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              keyboardType: keyboardType,
              controller: controller,
              obscureText: isPassword,
              decoration: InputDecoration(
                  suffixIcon: iconButton,
                  hintText: inputTitle,
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _emailPasswordWidget() {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          _entryField("Email", "Email",
              validator: (val) {
                if (!EmailValidator.validate(val, true)) {
                  return "L'adresse Email est Invalide";
                }
                if (val.isEmpty) {
                  return "Entrez un Email";
                }
                return null;
              },
              onChanged: (val) => _email = val,
              controller: _email,
              keyboardType: TextInputType.emailAddress),
          _entryField(
            "Mot de Passe",
            "Mot de Passe",
            isPassword: _passwordVisible,
            validator: (val) => val.isEmpty ? 'Entrez un mot de passe' : null,
            onChanged: (val) => _password = val,
            controller: _password,
            iconButton: IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: Icon(
                _passwordVisible ? Icons.visibility_off : Icons.visibility,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                // Update the state i.e. toogle the state of passwordVisible variable
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return SafeArea(
          child: Scaffold(
              key: _key,
              body: LayoutBuilder(
                builder:
                    (BuildContext context, BoxConstraints viewportConstraints) {
                  return SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Container(
                          height: sizingInformation.screenSize.height,
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                                minHeight: viewportConstraints.maxHeight),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  _emailPasswordWidget(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ButtonSubmit(
                                    title: 'Connexion',
                                    onPressed: () async {},
                                  ),
//                              Container(
//                                padding: EdgeInsets.symmetric(vertical: 10),
//                                alignment: Alignment.center,
//                                child: Text('Mot de Passe Oublié ?',
//                                    style: TextStyle(
//                                        fontSize: 14,
//                                        fontWeight: FontWeight.w500)),
//                              ),
                                ],
                              ),
                            ),
                          )));
                },
              )),
        );
      },
    );
  }
}
