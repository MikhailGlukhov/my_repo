import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';



import 'package:sport_tracker/email_verification/bloc/verification_bloc.dart';
import 'package:sport_tracker/gen/assets.gen.dart';
import 'package:sport_tracker/routes/routes_name.dart';


class EmailVerificationWidget extends StatelessWidget {
  const EmailVerificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocListener<VerificationBloc, VerificationState>(
          listener: (context, state) {
            state.when(
                initial: () => const CircularProgressIndicator(),
                inProcess: () => const CircularProgressIndicator(),
                sentEmail: () => context.pushReplacementNamed(RoutesName.homeScreenName));
          },
          child: ElevatedButton(
              onPressed: () {
                context
                    .read<VerificationBloc>()
                    .add(const VerificationEvent.sendEmailVerification());
                    
              }, style: ElevatedButton.styleFrom(fixedSize: Size(MediaQuery.of(context).size.width*0.7, 40),side: BorderSide(color: Color.fromRGBO(171, 92, 196, 0.815),width: 2)),
              child:  Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [ ImageIcon(AssetImage(Assets.icons.mail.path), size: 40), Text('Verificate your email'.tr())],
              ),),
        ),
      ),
    ));
  }
}
