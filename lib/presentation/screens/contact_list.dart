import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:water_utility_mobile/gen/assets.gen.dart';
import "dart:developer";

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() => ContactListState();
}

class ContactListState extends State<ContactListPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController myController = TextEditingController();
  TextEditingController myPhoneController = TextEditingController();
  TextEditingController myNameController = TextEditingController();

  void _printLatestValue() {
    final text = myController.text;
    print(text);
    //log("text");
  }

  @override
  void initState() {
    super.initState();
    //WidgetsBinding.instance.addPostFrameCallback((_) async {
    //await Future.delayed(Duration(seconds: 1));

    /// check it is the use first time launch

    //final SharedPreferencesAsync asyncPrefs = SharedPreferencesAsync();
    //bool? firstTime = await asyncPrefs.getBool('first_time');
    //final currentUri =
    // ignore: use_build_context_synchronously
    //    GoRouter.of(context).routeInformationProvider.value.uri;

    //if (currentUri.path != '/') {
    //  return; // Stops redirection if deep link exists
    //}
    //if ((firstTime ?? true)) {
    // /First time
    /// TODO: set value when user compeleted or Login success once
    // await asyncPrefs.setBool('first_time', false);
    // ignore: use_build_context_synchronously
    //  context.go('/onboarding');
    //} else {
    // /Not First time
    // ignore: use_build_context_synchronously
    //  context.go('/login');
    //}
    //});

    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Estate Management")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push("/contact_list_add_contact");
        },
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),

            /// App Icon
            Row(
              children: [
                Spacer(),
                //Expanded(child: Assets.icons.appIcon.image(fit: BoxFit.fill)),
                Spacer(),
              ],
            ),
            SizedBox(height: 20),

            /// App Title
            Text(
              "Estate Planning - Contact List-add a contact",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Spacer(),
            Text(
              "Contact List",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Spacer(),
            FractionallySizedBox(
              widthFactor: 0.7,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: "here"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'add a contact - form - name';
                        }
                        return null;
                      },
                      controller: myController,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "phone"),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'add a contact - form - phone';
                        }
                        return null;
                      },
                      controller: myPhoneController,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "email"),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'add a contact - form - email - empty';
                        } else if (EmailValidator.validate(value)) {
                          return 'add a contact - form - not a valid email';
                        }

                        return null;
                      },
                      controller: myPhoneController,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "relation"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'add a contact - form - relation';
                        }
                        return null;
                      },
                      controller: myController,
                    ),
                    //Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                      child: const Text("Submit"),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
