import 'package:go_router/go_router.dart';
import 'package:sport_tracker/auth/auth_widget.dart';
import 'package:sport_tracker/builder_app_widget.dart';
import 'package:sport_tracker/email_verification/email_verification_widget.dart';
import 'package:sport_tracker/enter_screen.dart';
import 'package:sport_tracker/error_widget.dart';
import 'package:sport_tracker/log_in/sign_in_widget.dart';
import 'package:sport_tracker/registration/sign_up_widget.dart';
import 'package:sport_tracker/reset_password/reset_password_widget.dart';
import 'package:sport_tracker/routes/routes_name.dart';
import 'package:sport_tracker/settings/settings_widget.dart';
import 'package:sport_tracker/timer/timer_widget.dart';
import 'package:sport_tracker/tracker_list/traker_list_widget.dart';

class Routes{
 
  static GoRouter returnRouter(){
    
  final GoRouter router = GoRouter(
    initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      name: RoutesName.homeScreenName,
      path: '/',
      builder: (context,  state) => const AuthWidget(),
        
    ),
    GoRoute(
      name: RoutesName.enterScreenName,
      path: '/enter',
      builder: (context,  state) => const EnterScreen(),
        
    ),
    GoRoute(
      name: RoutesName.signUpScreenName,
      path: '/sign_up',
      builder: (context,  state) => const SignUpWidget(),
        
    ),
    GoRoute(
      name: RoutesName.verificationScreenName,
      path: '/sign_up/verification',
      builder: (context,  state) => const EmailVerificationWidget(),
        
    ),
    GoRoute(
      name: RoutesName.signInScreenName,
      path: '/sign_in',
      builder: (context,  state) => const SignInWidget(),
        
    ),
    GoRoute(
      name: RoutesName.resetScreenName,
      path: '/sign_in/reset',
      builder: (context,  state) => const ResetPasswordWidget(),
        
    ),
    GoRoute(
      name: RoutesName.settingsScreenName,
      path: '/settings',
      builder: (context,  state) => const SettingsWidget(),
        
    ),
    GoRoute(
      name: RoutesName.trackerScreenName,
      path: '/sign_in/traker',
      builder: (context,  state) => const TrakerListWidget(),
        
    ),
    GoRoute(
      name: RoutesName.timerScreenName,
      path: '/sign_in/traker/timer',
      builder: (context,  state) => const TimerWidget(),
        
    ),
    GoRoute(
      name: RoutesName.errorScreenName,
      path: '/error',
      builder: (context,  state) => const ErrorDialogWidget(error: '',),
        
    ),
  ],
);
return router;
}

}