import 'dart:ffi';

import 'package:sharedpreferencesdemo/sharedpreferenceshelper.dart';

class Api {
  Future<void> loginUser() async {
    String token = "gfgfjgkgfrdrtbujhu";

    await SharedPreferencesHelper().setAuthToken(token);
  }
}
