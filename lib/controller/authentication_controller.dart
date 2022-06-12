import 'package:get/get.dart';
import 'package:getx_authentication_google/models/user_model.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationController extends GetxController {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  late UserModel userModel;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  // Logins user using GoogleSignIn
  loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();

      userModel = UserModel(
          name: googleSignInAccount!.displayName.toString(),
          email: googleSignInAccount.email,
          id: googleSignInAccount.id,
          photoUrl: googleSignInAccount.photoUrl.toString());
      await Get.offNamed('/home', arguments: userModel);
      return;
    } catch (e) {
      throw (e);
    }
  }

  /// Logs user out
  Future<void> logoutGoogle() async {
    await _googleSignIn.signOut();
    Get.offAllNamed('/');
  }
}
