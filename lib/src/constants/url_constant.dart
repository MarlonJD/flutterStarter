class UrlConstant {
  static const String BASE_URL =
      "http://192.168.1.50:8000/api";

  //Login
  static const String LOGIN = "/api-token-auth/";
  static const String USER_DETAIL = "/getUserDetail/";
  static const String SHIFT = "/shift/";
  static const String ALLSHIFT = "/shifts/";
  static const String CHECK_IN = "/checkIn/";
  static const String CHECK_OUT = "/checkOut/";
  static const String STOCKS = "/stock/";
  static const String CATEGORIES = "/category/";
  static const String PRODUCTSFROMCAT = "/productByCategory/{category_id}/";
  static const String STOCKSFROMPRODUCT = "/stockFromProduct/{product_id}/";
  static const String CHANGEQUANTITY = "/stock/{stock_id}/";
  static const String RECIPTS = "/recipt/";
  static const String REPORTS = "/report/";
}
