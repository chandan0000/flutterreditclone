import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterreditclone/core/constants/constant.dart';
import 'package:flutterreditclone/features/auth/controller/auth_controller.dart';
import 'package:flutterreditclone/theme/pallete.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({Key? key}) : super(key: key);

  void signInWithGoogle(
    BuildContext context,
    WidgetRef ref,
  ) {
    ref.read(authController).signInWithGoogle(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton.icon(
        onPressed: () {
          signInWithGoogle(context, ref);
        },
        icon: Image.asset(
          Constants.googlePath,
          width: 35,
        ),
        label: const Text(
          'Continue with google',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Pallete.greyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          minimumSize: const Size(
            double.infinity,
            50,
          ),
        ),
      ),
    );
  }
}
