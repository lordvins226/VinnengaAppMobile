import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:vinnenga/core/enums/user.dart';
import 'package:vinnenga/core/services/auth_service.dart';
import 'package:vinnenga/core/services/navigation_service.dart';
import 'package:vinnenga/ui/animations/loading.dart';
import 'package:vinnenga/ui/views/home_view.dart';
import 'package:vinnenga/ui/widgets/button_submit.dart';
import 'package:vinnenga/ui/widgets/vinnenga_title.dart';
import 'package:vinnenga/utils/responsive_builder.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _passwordVisible;
  final _formKey = GlobalKey<FormState>();
  final _key = GlobalKey<ScaffoldState>();
  String email = "";
  String password = "";

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
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

  Widget _emailPasswordWidget(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
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
              onChanged: (val) => user.email = val,
              controller: user.email,
              keyboardType: TextInputType.emailAddress),
          _entryField(
            "Mot de Passe",
            "Mot de Passe",
            isPassword: _passwordVisible,
            validator: (val) => val.isEmpty ? 'Entrez un mot de passe' : null,
            onChanged: (val) => user.password = val,
            controller: user.password,
            iconButton: IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: Icon(
                _passwordVisible ? Icons.visibility_off : Icons.visibility,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
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
    final user = Provider.of<UserProvider>(context);
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
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  VinTitle(),
                                  SizedBox(
                                    height: 65,
                                  ),
                                  _emailPasswordWidget(context),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  user.status == Status.Authenticating
                                      ? Container(
                                          width: 40,
                                          height: 40,
                                          child: CircularProgressIndicator(),
                                        )
                                      : ButtonSubmit(
                                          title: 'Connexion',
                                          onPressed: () async {
                                            if (!await user.signIn()) {
                                              _key.currentState.showSnackBar(
                                                  SnackBar(
                                                      content: Text("Failed")));
                                              return;
                                            } else {
                                              user.clearController();
                                              Navigator.pushReplacementNamed(
                                                  context, "/Home");
                                            }
                                          },
                                        ),
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
