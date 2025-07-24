import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:water_utility_mobile/gen/assets.gen.dart';
import "dart:developer";

import '/bloc/funeral_bloc.dart';

class FuneralPage extends StatefulWidget {
  const FuneralPage({super.key});

  @override
  State<FuneralPage> createState() => FuneralState();
}

class FuneralState extends State<FuneralPage> with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  TextEditingController myController = TextEditingController();
  late TabController tabController;

  void _printLatestValue() {
    final text = myController.text;
    print(text);
    //log("text");
  }

  @override
  void initState() {
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

    tabController = TabController(length: 4, vsync: this);

    tabController.addListener(() {
      setState(() {});
    });

    super.initState();

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
    return BlocBuilder<FuneralBloc, FuneralState1>(
      builder: (context, state) {
        print("state $state");
        return Scaffold(
          appBar: AppBar(title: Text("Estate Management - Funeral")),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  "Estate Planning - Funeral/memorial/in person on remote",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                //Spacer(),
                Flexible(
                  child: FractionallySizedBox(
                    heightFactor: 0.5,
                    widthFactor: 0.5,
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            'hello ${state}',
                            //'${state.bankAccountList1[0]["name"]} list ${bankAccountList[index].name} ${bankAccountList[index].bankName} ${bankAccountList[index].accountType}',
                            //'111bankAccountList1 $index ${bankAccountList1[index]["name"]}${bankAccountList1[index]["bankName"]}',
                          ),
                        );
                      },
                    ),
                  ),
                ),
                //Spacer(),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Funeral Home Name",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Funeral Home Name';
                          }
                          return null;
                        },
                        controller: myController,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Date Of Viewing",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Date of Viewing';
                          }
                          return null;
                        },
                        controller: myController,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText:
                              "Manage Guest List - choose from contact list",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Date of Viewing';
                          }
                          return null;
                        },
                        controller: myController,
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "Cemetary"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Date of Burial';
                          }
                          return null;
                        },
                        controller: myController,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Date of Burial",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Date of Burial';
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
                Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
