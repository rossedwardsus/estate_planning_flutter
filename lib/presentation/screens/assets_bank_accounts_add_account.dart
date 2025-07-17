import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:go_router/go_router.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:water_utility_mobile/gen/assets.gen.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AssetsBankAccountsAddAccountPage extends StatefulWidget {
  const AssetsBankAccountsAddAccountPage({super.key});

  @override
  State<AssetsBankAccountsAddAccountPage> createState() =>
      AssetsBankAccountsAddAccountState();
}

class AssetsBankAccountsAddAccountState
    extends State<AssetsBankAccountsAddAccountPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController myController = TextEditingController();
  TextEditingController myAssetNameController = TextEditingController();
  TextEditingController myBankNameController = TextEditingController();

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
  }

  @override
  Widget build(BuildContext context) {
    String? _chosenModel;

    return Scaffold(
      appBar: AppBar(title: Text("Estate Management - Add Account")),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Spacer(),

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
              "Estate Planning - Add Bank Account",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            //Spacer(),
            FractionallySizedBox(
              widthFactor: 0.7,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: "Asset Name"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'add a contact - form - name';
                        }
                        return null;
                      },
                      controller: myController,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Bank Name"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'add a contact - form - phone';
                        }
                        return null;
                      },
                      controller: myBankNameController,
                    ),
                    DropdownButton(
                      items:
                          <String>[
                            "Checking Account",
                            "Ira",
                            "CD",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _chosenModel = newValue;
                        });
                      },
                      hint: Text("Choose an Account Type"),
                    ),
                    //Spacer(),
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 200,
                              color: Colors.amber,
                              child: Center(
                                child: Column(
                                  children: <Widget>[const Text("Hello!")],
                                ),
                              ),
                            );
                          },

                          /*CupertinoScaffold.showCupertinoModalBottomSheet(
                            expand: true,
                            context: context,
                            builder:
                                (context) =>
                                    Stack(children: <Widget>[Text("hello!")]),*/
                        );
                      },
                      child: Text("Bank Account Type popup"),
                    ),
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
          ],
        ),
      ),
    );
  }
}
