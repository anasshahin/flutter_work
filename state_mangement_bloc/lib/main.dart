import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:state_mangement_bloc/connectivity/bloc/internet_bloc.dart';
import 'package:state_mangement_bloc/simple_bloc/bloc/counter_bloc.dart';
import 'package:state_mangement_bloc/simple_bloc/pages/home_page.dart';
import 'package:state_mangement_bloc/trip_plan/logic/trip_plan_bloc.dart';
import 'package:state_mangement_bloc/trip_plan/ui/trip_plan_screen.dart';

import 'Localization/app_localization.dart';
import 'Localization/cubic/local_cubit.dart';
import 'Localization/localization_home_page.dart';
import 'connectivity/connect_home_page.dart';

void main() {
  runApp(const MyLocalizationApp());
}
class MyConnectApp extends StatelessWidget {
  const MyConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ConnectHomePage(),
      ),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
class MyTripApp extends StatelessWidget {
  const MyTripApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TripPlanBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TripPlanScreen(),
      ),
    );
  }
}

class MyLocalizationApp extends StatelessWidget {
  const MyLocalizationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LocalCubit()..getSavedLanguage()),
      ],
      child: BlocBuilder<LocalCubit, LocalState>(
        builder: (context, state) {
          if (state is ChangeLocalState) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              locale: state.local,
              supportedLocales: const [Locale('en'), Locale('ar')],
              localizationsDelegates: const [
                // these three input are responsible for detect the direction of my app
                GlobalMaterialLocalizations.delegate,
                // this delegate responsible for change some text from language to another
                GlobalWidgetsLocalizations.delegate,
                // this is responsible for direction of widget
                GlobalCupertinoLocalizations.delegate,
                // this delegate is same as first delegate but in Cupertino
                AppLocalizations.delegate,
              ],
              localeListResolutionCallback: (deviceLocale,
                      supportedLocales) // this use for choose app language based on some condition
                  // supportedLocales locales that I choose up which is 'en' and 'ar'
                  // deviceLocale  device language
                  {
                for (var locale in supportedLocales) {
                  if (deviceLocale != null &&
                      deviceLocale.first.languageCode == locale.languageCode) {
                    return deviceLocale.first;
                  }
                }

                return supportedLocales.first;
              },
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: LocalizationHome(),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
