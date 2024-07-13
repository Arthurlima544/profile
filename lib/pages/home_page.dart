import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 104, 102, 102),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/profile_foto.jpg', fit: BoxFit.contain),
                const Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Arthur Lima",
                      style: TextStyle(fontSize: 60, color: Colors.white),
                    ),
                  ),
                ),
                const HeaderWidget(),
              ],
            ),
            const SobrePage(),
            const ExperienciaPage(),
            const LinguagemPage(),
            const ContatoPage(),
          ],
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("AL", style: TextStyle(fontSize: 30, color: Colors.white)),
          HeaderButton(title: "Sobre", onPressed: () {}),
          HeaderButton(title: "Experiencia", onPressed: () {}),
          HeaderButton(title: "Linguagem", onPressed: () {}),
          HeaderButton(title: "Contato", onPressed: () {}),
        ],
      ),
    );
  }
}

class HeaderButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const HeaderButton({
    this.onPressed,
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
    );
  }
}

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Row(
        children: [
          FlutterLogo(),
          FlutterLogo(),
        ],
      ),
    );
  }
}

class ExperienciaPage extends StatelessWidget {
  const ExperienciaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Row(
        children: [
          FlutterLogo(style: FlutterLogoStyle.markOnly),
          FlutterLogo(),
        ],
      ),
    );
  }
}

class LinguagemPage extends StatelessWidget {
  const LinguagemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Row(
        children: [
          FlutterLogo(style: FlutterLogoStyle.markOnly),
          FlutterLogo(),
        ],
      ),
    );
  }
}

class ContatoPage extends StatelessWidget {
  const ContatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Row(
        children: [
          FlutterLogo(style: FlutterLogoStyle.markOnly),
          FlutterLogo(),
        ],
      ),
    );
  }
}
