// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_block/route/app_router.dart';

void main() {
  runApp( BreakingBadApp(appRouter: AppRouter()));
}

// ignore: use_key_in_widget_constructors
class BreakingBadApp extends StatelessWidget {
  
 final AppRouter appRouter;
  const BreakingBadApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}






