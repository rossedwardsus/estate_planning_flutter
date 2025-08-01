import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:water_utility_mobile/gen/assets.gen.dart';
import '/presentation/screens/components/main_menu_component_mobile.dart';
import '/presentation/screens/components/main_menu_component_web_desktop.dart';
import 'dart:io';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
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
    return Scaffold(
      appBar: AppBar(title: Text("Estate Management1")),
      backgroundColor: Colors.white,
      body: kIsWeb ? MainMenuWebDesktopComponent() : MainMenuMobilePage(),
      /*
              *? Text("web")
              : SafeArea(
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.min,
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
                    //SizedBox(height: 10),

                    /// App Title
                    Column(children: [Expanded(child: Text("hello"))]),
                    Column(
                      children: [
                        Text(
                          "Estate Planning",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        //Spacer(),
                        TextButton(
                          onPressed: () => context.push("/estate_plan"),
                          child: Text("Estate Plan Who For"),
                        ),
                        TextButton(
                          onPressed: () => context.push("/contact_list"),
                          child: Text("Contact List12345r"),
                        ),
                        TextButton(
                          onPressed:
                              () => context.push("/assets_bank_accounts"),
                          child: Text("Bank Accounts"),
                        ),
                        TextButton(
                          onPressed: () => context.push("/assets_physical"),
                          child: Text("Physixal Assets"),
                        ),
                        TextButton(
                          onPressed: () => context.push("/funeral"),
                          child: Text("Funeral"),
                        ),
                        TextButton(
                          onPressed: () => context.push("/todos"),
                          child: Text("Todos"),
                        ),
                        TextButton(
                          onPressed: () => context.push("/documents"),
                          child: Text("Documents"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),*/
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera"),
        ],
      ),
    );
  }
}
