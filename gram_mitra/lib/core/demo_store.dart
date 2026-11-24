// Temporary in-memory data. It is cleared when the app is restarted.
class DemoStore {
  static final Map<String, String> users = {'9876500000': 'Gram@1234'};
  static String userName = 'Ramesh Patel';
  static String mobile = '9876500000';
  static String village = 'Adarsh Gram';
  static bool isLoggedIn = false;

  static bool register(String name, String phone, String password, String selectedVillage) {
    if (users.containsKey(phone)) return false;
    users[phone] = password;
    userName = name;
    mobile = phone;
    village = selectedVillage;
    return true;
  }

  static bool login(String phone, String password) {
    if (users[phone] == password) {
      mobile = phone;
      isLoggedIn = true;
      return true;
    }
    return false;
  }
}
