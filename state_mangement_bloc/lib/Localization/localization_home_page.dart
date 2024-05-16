import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangement_bloc/Localization/app_localization.dart';
import 'cubic/local_cubit.dart';

class LocalizationHome extends StatelessWidget {
  LocalizationHome({super.key});

  final List<bool> _selections = List.generate(2, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.translate("title")),
        actions: [
          /*
          child: BlocListener<LocaleCubit, LocaleState>(
listener: (context, state) {
if (state is ChangeLocaleState) {
Navigator.of (context).pop();
}
},
child: BlocBuilder<LocaleCubit, LocaleState>(
           */
          BlocConsumer<LocalCubit, LocalState>(
            listener: (context, state) {
      if (state is ChangeLocalState) {
     // Navigator.of (context).pop();
      }
      },
            builder: (context, state) {
              return ToggleButtons(
                isSelected: _selections,
                children: const [
                  Text('ar'),
                  Text('en'),
                ],
                onPressed: (int x) {
                  if (x == 0) BlocProvider.of<LocalCubit>(context).changeLanguage('ar');
                  if (x == 1) BlocProvider.of<LocalCubit>(context).changeLanguage('en');
                  // context.read<LocalCubit>().changeLanguage(languageCode);
                },
              );
            },
          )
        ],
      ),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)!.translate('hello_msg')),
            Text(AppLocalizations.of(context)!.translate('details_msg')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
