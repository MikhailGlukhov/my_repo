
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sport_tracker/routes/routes_name.dart';

class ErrorDialogWidget extends StatelessWidget {
  final String error;
  const ErrorDialogWidget({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return  SimpleDialog(
          children: [
            Center(child: Text(error)),
            TextButton(
                onPressed: () {
                  context.pushReplacementNamed(RoutesName.enterScreenName);
                },
                child:  Text('OK'.tr()))
          ],
        );
    
  }
}
