import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        flexibleSpace: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Row(
                children: [
                  const Expanded(child: Icon(Icons.language)),
                  Expanded(
                      child: Text(AppLocalizations.of(context)!.localeName)),
                ],
              ),
            ),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SizedBox(),
        ),
      ),
      body: Center(
        child: Localizations.override(
          context: context,
          child: Text(AppLocalizations.of(context)!.helloWorld),
        ),
      ),
    );
  }
}
