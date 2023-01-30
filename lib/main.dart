import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Quill Editor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // TODO FlutterQuill Controller
  QuillController controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 15.0,
            ),
            Image.asset(
              "assets/images/quill.png",
              height: 50,
            ),
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: QuillToolbar.basic(
                controller: controller,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 13.0, vertical: 30.0),
                margin: const EdgeInsets.symmetric(horizontal: 13.0),
                decoration: BoxDecoration(boxShadow: [
                  const BoxShadow(
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                      blurRadius: 10.0,
                      spreadRadius: 2.0),
                  BoxShadow(
                      color: Colors.green.shade200,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0)
                ]),
                child:
                    QuillEditor.basic(controller: controller, readOnly: false),
              ),
            )
          ],
        ),
      ),
    );
  }
}
