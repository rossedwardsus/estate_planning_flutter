import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:water_utility_mobile/gen/assets.gen.dart';

class BankAccount {
  String? name;
  String? bankName;

  BankAccount(@required name, @required bankName);
}

class AssetsBankAccountsPage extends StatefulWidget {
  const AssetsBankAccountsPage({super.key});

  @override
  State<AssetsBankAccountsPage> createState() => AssetsBankAccountsState();
}

class AssetsBankAccountsState extends State<AssetsBankAccountsPage> {
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

    //List<BankAccount> bankAccountList = [
    //  {"1": "one"},
    //];

    var bankAccountList1 = [
      {"name": "accountone1", "bankName": "bank1"},
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Estate Management - Bank Accounts")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push("/assets_bank_accounts_add_account");
        },
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Spacer(),

            /// App Icon
            //Row(
            //  children: [
            //    Spacer(),
            //Expanded(child: Assets.icons.appIcon.image(fit: BoxFit.fill)),
            //    Spacer(),
            //  ],
            //),
            //SizedBox(height: 20),

            /// App Title
            Text(
              "Estate Planning - Accounts",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.5,
                widthFactor: 0.5,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        '111bankAccountList1 $index ${bankAccountList1[index]["name"]}${bankAccountList1[index]["bankName"]}',
                      ),
                    );
                  },
                ),
              ),
            ),
            //Spacer(),
            FractionallySizedBox(
              widthFactor: 0.7,
              //heightFactor: 0.5,
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
