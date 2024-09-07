import 'package:flutter/material.dart';

import '../controllers/user_controller.dart';

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({super.key});

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

bool? isChecked = false;
class _LoginBottomSheetState extends State<LoginBottomSheet> {
  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  final _userController = UserController();
  



  void _submit() {
    if (_formKey.currentState!.validate() ?? false) {
      final user = _userController.createUser(
          _usernameController.text, _passwordController.text);
      print("Login as ${user.username}");
      Navigator.pop(context);
    } else {
      print("Login Failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    var checkedValue = false;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: "Username"),
                controller: _usernameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Username is required";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: "Password"),
                controller: _passwordController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password is required";
                  } else if (value.length < 8) {
                    return "Password must be at least 8 characters";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: _submit, child: const Text("Login")),
              Container(child: CheckboxListTile(
                title: Text("Remember me"),
                 value: isChecked,
                  onChanged:(newbool) { 
                    setState(() {
                      isChecked = newbool;
                      }
                    );
                  },  controlAffinity: ListTileControlAffinity.leading,)
              ),
              Row (mainAxisAlignment: MainAxisAlignment.end, children: [
                TextButton(  onPressed: () {}
                ,child: const Text("Forgot Password?"),

                ),


              ],),

            ],
          )
        ),
    );
  }
}
