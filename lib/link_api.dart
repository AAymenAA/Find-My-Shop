class AppLink {
  static const String server = "http://192.168.1.5/find_my_shop";

  static const String test = "$server/test.php";

  // =====================Auth==================//

  static const String signup = "$server/auth/signup.php";
  static const String verifycodesignup = "$server/auth/verifycode.php";
  static const String login = "$server/auth/login.php";

// =====================FourgetPassword==================//
  static const String checkemail = "$server/forgetpassword/checkemail.php";
  static const String resetpassword = "$server/forgetpassword/resetpassword.php";
  static const String verifycodeforgetpassword = "$server/forgetpassword/verifycode.php";


  // ================home========================//
  static const String home = "$server/home.php";

  // ================shops========================//
  static const String shops = "$server/shops.php";

  // ================images==================//
  static const String images = "$server/images";
  static const String categoriesimg = "$images/categories";
  static const String shopsimg = "$images/shops";
  static const String menucatimg = "$images/menu";
  static const String inmenuimg = "$images/inmenu";

// ================cart==================//
  static const String cartview = "$server/cart/view.php";
  static const String cartadd = "$server/cart/add.php";
  static const String menudetails = "$server/menudetails.php";
  static const String cartdelete = "$server/cart/delete.php";
  static const String carttrash = "$server/cart/trash.php";


// ================checkout==================//
  static const String checkout = "$server/orders/checkout.php";

  // ================orders==================//
  static const String ordersveiw = "$server/orders/ordersveiw.php";
  static const String getdileveryinfo = "$server/orders/getdileveryinfo.php";


  // =============notifications===============//
  static const String notoficationveiw = "$server/notificationveiw.php";
}


