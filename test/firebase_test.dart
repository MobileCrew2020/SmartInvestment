import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_platform_interface/src/auth_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class FirebaseAuthMock extends Mock implements FirebaseAuth {
  @override
  FirebaseApp app;

  @override
  Future<void> applyActionCode(String code) {
    // TODO: implement applyActionCode
    throw UnimplementedError();
  }

  @override
  Stream<User> authStateChanges() {
    // TODO: implement authStateChanges
    throw UnimplementedError();
  }

  @override
  Future<ActionCodeInfo> checkActionCode(String code) {
    // TODO: implement checkActionCode
    throw UnimplementedError();
  }

  @override
  Future<void> confirmPasswordReset({String code, String newPassword}) {
    // TODO: implement confirmPasswordReset
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> createUserWithEmailAndPassword(
      {String email, String password}) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  // TODO: implement currentUser
  User get currentUser => throw UnimplementedError();

  @override
  Future<List<String>> fetchSignInMethodsForEmail(String email) {
    // TODO: implement fetchSignInMethodsForEmail
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> getRedirectResult() {
    // TODO: implement getRedirectResult
    throw UnimplementedError();
  }

  @override
  Stream<User> idTokenChanges() {
    // TODO: implement idTokenChanges
    throw UnimplementedError();
  }

  @override
  bool isSignInWithEmailLink(String emailLink) {
    // TODO: implement isSignInWithEmailLink
    throw UnimplementedError();
  }

  @override
  // TODO: implement languageCode
  String get languageCode => throw UnimplementedError();

  @override
  // TODO: implement onAuthStateChanged
  Stream<User> get onAuthStateChanged => throw UnimplementedError();

  @override
  // TODO: implement pluginConstants
  Map get pluginConstants => throw UnimplementedError();

  @override
  Future<void> sendPasswordResetEmail(
      {String email, ActionCodeSettings actionCodeSettings}) {
    // TODO: implement sendPasswordResetEmail
    throw UnimplementedError();
  }

  @override
  Future<void> sendSignInLinkToEmail(
      {String email, ActionCodeSettings actionCodeSettings}) {
    // TODO: implement sendSignInLinkToEmail
    throw UnimplementedError();
  }

  @override
  Future<void> setLanguageCode(String languageCode) {
    // TODO: implement setLanguageCode
    throw UnimplementedError();
  }

  @override
  Future<void> setPersistence(Persistence persistence) {
    // TODO: implement setPersistence
    throw UnimplementedError();
  }

  @override
  Future<void> setSettings(
      {bool appVerificationDisabledForTesting, String userAccessGroup}) {
    // TODO: implement setSettings
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> signInAnonymously() {
    // TODO: implement signInAnonymously
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> signInWithCredential(AuthCredential credential) {
    // TODO: implement signInWithCredential
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> signInWithCustomToken(String token) {
    // TODO: implement signInWithCustomToken
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> signInWithEmailAndPassword(
      {String email, String password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> signInWithEmailLink({String email, String emailLink}) {
    // TODO: implement signInWithEmailLink
    throw UnimplementedError();
  }

  @override
  Future<ConfirmationResult> signInWithPhoneNumber(String phoneNumber,
      [RecaptchaVerifier verifier]) {
    // TODO: implement signInWithPhoneNumber
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> signInWithPopup(AuthProvider provider) {
    // TODO: implement signInWithPopup
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithRedirect(AuthProvider provider) {
    // TODO: implement signInWithRedirect
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Stream<User> userChanges() {
    // TODO: implement userChanges
    throw UnimplementedError();
  }

  @override
  Future<String> verifyPasswordResetCode(String code) {
    // TODO: implement verifyPasswordResetCode
    throw UnimplementedError();
  }

  @override
  Future<void> verifyPhoneNumber(
      {String phoneNumber,
      verificationCompleted,
      verificationFailed,
      codeSent,
      codeAutoRetrievalTimeout,
      String autoRetrievedSmsCodeForTesting,
      Duration timeout = const Duration(seconds: 30),
      int forceResendingToken}) {
    // TODO: implement verifyPhoneNumber
    throw UnimplementedError();
  }
}
