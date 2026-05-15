import 'package:apirat_multi_store/vendor/views/screens/landing_screen.dart';
import 'package:apirat_multi_store/views/buyers/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class VendorAuthScreen extends StatelessWidget {
  const VendorAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      // If the user is already signed-in, use it as initial data
      initialData: FirebaseAuth.instance.currentUser,
      builder: (context, snapshot) {
        // User is not signed in
        if (!snapshot.hasData) {
          return SignInScreen(providerConfigs: [
            EmailProviderConfiguration(),
            GoogleProviderConfiguration(
                clientId: '1:286126440029:android:a7040a41081765618ad7b4'),
            PhoneProviderConfiguration(),
          ]);
        }

        // Render your application if authenticated
        return MainScreen();
      },
    );
  }
}
