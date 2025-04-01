import 'package:get/get.dart';
import 'package:hrm/utils/constants/share_pref_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService extends GetxService {
  static late final SharedPreferences instance;

  static Future<SharedPreferences> init() async =>
      instance = await SharedPreferences.getInstance();

  static String getLangCode() {
    return instance.getString(SharePrefConstant.langCode) ?? "KO";
  }

  static void setLangCode(String value) async {
    instance.setString(SharePrefConstant.langCode, value);
  }

  static String getNaverAccessToken() {
    return instance.getString(SharePrefConstant.naverAccessToken) ?? "";
  }

  static void setNaverAccessToken(String value) async {
    instance.setString(SharePrefConstant.naverAccessToken, value);
  }

  static String getNaverRefreshToken() {
    return instance.getString(SharePrefConstant.naverRefreshToken) ?? "";
  }

  static void setNaverRefreshToken(String value) async {
    instance.setString(SharePrefConstant.naverRefreshToken, value);
  }

  static String getAccessToken() {
    return instance.getString(SharePrefConstant.accessToken) ?? "";
  }

  static Future<void> setAccessToken(String value) async {
    await instance.setString(SharePrefConstant.accessToken, value);
  }

  static String getUser() {
    return instance.getString(SharePrefConstant.user) ?? "";
  }

  static Future<void> setUser(String value) async {
    await instance.setString(SharePrefConstant.user, value);
  }

  static bool isKeepLogin() {
    return instance.getBool(SharePrefConstant.keepLogin) ?? false;
  }

  static void setKeepLogin(bool value) async {
    instance.setBool(SharePrefConstant.keepLogin, value);
  }

  static String getShopmallApiUrl() {
    return instance.getString(SharePrefConstant.shopmallApiUrl) ??
        "http://api.pharme.co/api";
  }

  static void setShopmallApiUrl(String value) async {
    instance.setString(SharePrefConstant.shopmallApiUrl, value);
  }

  static String getNiceApiUrl() {
    return instance.getString(SharePrefConstant.niceApiUrl) ??
        "http://nice.pharme.co";
  }

  static void setNiceApiUrl(String value) async {
    instance.setString(SharePrefConstant.niceApiUrl, value);
  }

  static String getPaymentApiUrl() {
    return instance.getString(SharePrefConstant.paymentApiUrl) ??
        "http://payment.pharme.co";
  }

  static void setPaymentApiUrl(String value) async {
    instance.setString(SharePrefConstant.paymentApiUrl, value);
  }
}
