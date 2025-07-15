import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:water_utility_mobile/gen/assets.gen.dart';

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
              "Estate Planning",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () => context.go("/contact_list"),
              child: Text("Contact List12345r"),
            ),
          ],
        ),
      ),
    );
  }
}
