import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:water_utility_mobile/gen/assets.gen.dart';
import '/models/asset_bank_account.dart';
import '/bloc/assets_bank_account_bloc.dart';

/*class BankAccount {
  String? name;
  String? bankName;
  String? accountType;

  BankAccount(@required this.name, @required this.bankName, @required this.accountType);

  Map<String, dynamic> toJson() => {"name": name, "bankName": bankName, "accountType": accountType};

  BankAccount.fromJson(Map<String, dynamic> json)
    : name = json["name"],
      bankName = json["bankName"],
      accountType = json["accountName"];
}*/

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

    List<AssetBankAccount> bankAccountList = [
      AssetBankAccount(
        name: "freezedaccountone1",
        bankName: "freezedbank1",
        accountType: "freezedcd",
      ),
    ];

    var bankAccountList1 = [
      {"name": "accountone1", "bankName": "bank1"},
    ];

    return BlocProvider(
      create: (context) => AssetsBankAccountBloc(),
      child: BlocConsumer<AssetsBankAccountBloc, AssetsBankAccountState>(
        buildWhen: (previous, current) {
          /*if (previous is OnboardingPageState &&
                    current is OnboardingPageState) {
                  if (previous.pageIndex == 0 && current.pageIndex > 0) {
                    return true;
                  } else if (previous.pageIndex > 0 && current.pageIndex == 0) {
                    return true;
                  } else if (previous.pageIndex != 2 && current.pageIndex == 2) {
                    return true;
                  } else if (previous.pageIndex == 2 && current.pageIndex != 2) {
                    return true;
                  }
                  return false;
                }*/
          return false;
        },
        listener: (context, state) async {
          /*if (state is OnboardingPageState) {
                    /// Back button on Appbar
                    if (state.pageIndex > 0) {
                      showBackButtion = true;
                    } else if (state.pageIndex == 0) {
                      showBackButtion = false;
                    }

                    /// Create Account Button in the bottom
                    if (state.pageIndex == 2) {
                      showCreateAndLoginButton = true;
                    } else {
                      showCreateAndLoginButton = false;
                    }

                    /// Notification request
                    if (state.pageIndex >= 0) {
                      if (state.pageIndex == 1) {
                        FlutterLocalNotificationsPlugin
                            flutterLocalNotificationsPlugin =
                            FlutterLocalNotificationsPlugin();
                        if (Platform.isAndroid) {
                          final AndroidFlutterLocalNotificationsPlugin?
                              androidImplementation = flutterLocalNotificationsPlugin
                                  .resolvePlatformSpecificImplementation<
                                      AndroidFlutterLocalNotificationsPlugin>();
                          final bool? grantedNotificationPermission =
                              await androidImplementation
                                  ?.requestNotificationsPermission();
                          debugPrint(
                              "grantedNotificationPermission : $grantedNotificationPermission");
                        } else if (Platform.isIOS) {
                          await flutterLocalNotificationsPlugin
                              .resolvePlatformSpecificImplementation<
                                  IOSFlutterLocalNotificationsPlugin>()
                              ?.requestPermissions(
                                alert: true,
                                badge: true,
                                sound: true,
                              );
                        }
                      }

                      /// Move PageView by Index
                      _pageViewMockController.animateToPage(
                        state.pageIndex,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                      _pageViewTextController.animateToPage(
                        state.pageIndex,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      /// Should not happened
                      /// Back Button show disable
                      throw ("${state.runtimeType} error, index: ${state.pageIndex}");
                    }
                  } else if (state is RegisterNavigation) {
                    context.push("/onboarding/account_role_select");
                  } else if (state is LoginNavigation) {
                    context.go("/login");
                  }*/
        },
        builder: (context, state) {
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
                              'list ${bankAccountList[index].name} ${bankAccountList[index].bankName} ${bankAccountList[index].accountType}',
                              //'111bankAccountList1 $index ${bankAccountList1[index]["name"]}${bankAccountList1[index]["bankName"]}',
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
                            decoration: InputDecoration(
                              labelText: "Asset Name",
                            ),
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
        },
      ),
    );
  }
}
