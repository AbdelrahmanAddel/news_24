// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `News 24`
  String get news24 {
    return Intl.message('News 24', name: 'news24', desc: '', args: []);
  }

  /// `Username`
  String get userName {
    return Intl.message('Username', name: 'userName', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Sign Up`
  String get SignUp {
    return Intl.message('Sign Up', name: 'SignUp', desc: '', args: []);
  }

  /// `  or sign in with  `
  String get orSignIn {
    return Intl.message(
      '  or sign in with  ',
      name: 'orSignIn',
      desc: '',
      args: [],
    );
  }

  /// `By signing up to News24 you are accepting our \n`
  String get bySigningUp {
    return Intl.message(
      'By signing up to News24 you are accepting our \n',
      name: 'bySigningUp',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get thePasswordProvide {
    return Intl.message(
      'The password provided is too weak.',
      name: 'thePasswordProvide',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email.`
  String get theAccountAlready {
    return Intl.message(
      'The account already exists for that email.',
      name: 'theAccountAlready',
      desc: '',
      args: [],
    );
  }

  /// ` Sign up successful ,Please Check your email to verify your account`
  String get signupSuccssful {
    return Intl.message(
      ' Sign up successful ,Please Check your email to verify your account',
      name: 'signupSuccssful',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred`
  String get unExpectedError {
    return Intl.message(
      'An unexpected error occurred',
      name: 'unExpectedError',
      desc: '',
      args: [],
    );
  }

  /// `Please complete all fields`
  String get pleaseCompleteALl {
    return Intl.message(
      'Please complete all fields',
      name: 'pleaseCompleteALl',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message('Sign In', name: 'signIn', desc: '', args: []);
  }

  /// `Forget Password`
  String get forgetPassword {
    return Intl.message(
      'Forget Password',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account? `
  String get dontHaveAccount {
    return Intl.message(
      'Don’t have an account? ',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `No user found for that email.`
  String get noUserFound {
    return Intl.message(
      'No user found for that email.',
      name: 'noUserFound',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password provided for that user.`
  String get wrongPasswordProvided {
    return Intl.message(
      'Wrong password provided for that user.',
      name: 'wrongPasswordProvided',
      desc: '',
      args: [],
    );
  }

  /// `Please verify your email`
  String get pleaseVerfiyYourEmail {
    return Intl.message(
      'Please verify your email',
      name: 'pleaseVerfiyYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Email`
  String get invalidEmail {
    return Intl.message(
      'Invalid Email',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email to be sent a reset password\n link.`
  String get enterYourEmailTo {
    return Intl.message(
      'Enter your email to be sent a reset password\n link.',
      name: 'enterYourEmailTo',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message('Reset', name: 'reset', desc: '', args: []);
  }

  /// `Email sent. Please check your email to reset your password`
  String get emailSentPlease {
    return Intl.message(
      'Email sent. Please check your email to reset your password',
      name: 'emailSentPlease',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
