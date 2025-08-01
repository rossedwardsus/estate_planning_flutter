import 'package:estate_planning_flutter/models/asset_physical.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'presentation/screens/estate_plan.dart';
import 'presentation/screens/splash_page.dart';
import 'presentation/screens/contact_list.dart';
import 'presentation/screens/contact_list_add_contact.dart';
import 'presentation/screens/assets_bank_accounts.dart';
import 'presentation/screens/assets_bank_accounts_add_account.dart';
import 'presentation/screens/assets_physical.dart';
import 'presentation/screens/funeral.dart';
import 'presentation/screens/todos.dart';
import 'presentation/screens/documents.dart';
import '/bloc/assets_bank_account_bloc.dart';
import '/bloc/assets_physical_bloc.dart';
import '/bloc/document_bloc.dart';
import '/bloc/funeral_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    usePathUrlStrategy();
  }
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AssetsBankAccountBloc>(
          create: (BuildContext context) => AssetsBankAccountBloc(),
        ),
        BlocProvider<AssetsPhysicalBloc>(
          create: (BuildContext context) => AssetsPhysicalBloc(),
        ),
        BlocProvider<DocumentBloc>(
          create: (BuildContext context) => DocumentBloc(),
        ),
        BlocProvider<FuneralBloc>(
          create: (BuildContext context) => FuneralBloc(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

/// The route configuration.
final GoRouter _router = GoRouter(
  // Enable logging for debugging navigation issues
  debugLogDiagnostics: true,

  // Log all route changes for debugging
  observers: [NavigatorObserver()],

  // Handle route errors
  errorBuilder: (context, state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
        backgroundColor: const Color(0xFF1C69E1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Page Not Found',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text('Could not find route: ${state.uri.toString()}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  },

  // Add redirect for catching issues with navigation
  redirect: (BuildContext context, GoRouterState state) {
    // Log navigation for debugging
    debugPrint('Navigating to: ${state.uri.toString()}');
    return null; // Return null to continue with the navigation
  },

  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashPage();
        //return;
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'contact_list',
          builder: (BuildContext context, GoRouterState state) {
            return const ContactListPage();
          },
        ),
        GoRoute(
          path: 'estate_plan',
          builder: (BuildContext context, GoRouterState state) {
            return const EstatePlanPage();
          },
        ),
        GoRoute(
          path: 'contact_list_add_contact',
          builder: (BuildContext context, GoRouterState state) {
            return const ContactListAddContactPage();
          },
        ),
        GoRoute(
          path: 'assets_bank_accounts_add_account',
          builder: (BuildContext context, GoRouterState state) {
            return const AssetsBankAccountsAddAccountPage();
          },
        ),
        GoRoute(
          path: 'assets_bank_accounts',
          builder: (BuildContext context, GoRouterState state) {
            return const AssetsBankAccountsPage();
          },
        ),
        GoRoute(
          path: 'assets_physical',
          builder: (BuildContext context, GoRouterState state) {
            return const AssetsPhysicalPage();
          },
        ),
        GoRoute(
          path: 'funeral',
          builder: (BuildContext context, GoRouterState state) {
            return const FuneralPage();
          },
        ),
        GoRoute(
          path: 'todos',
          builder: (BuildContext context, GoRouterState state) {
            return const TodosPage();
          },
        ),
        GoRoute(
          path: 'documents',
          builder: (BuildContext context, GoRouterState state) {
            return const DocumentsPage();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Water Utility App',
      debugShowCheckedModeBanner: false,
      //theme: AppTheme.lightTheme,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
