class FormValidator {
  static String? isValidEmail(String? email) {
    final RegExp emailRegExp =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (!emailRegExp.hasMatch(email!)) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  static String? isValidFullName(String? fullName) {
    if (fullName == null || fullName.isEmpty) {
      return 'Please enter your full name.';
    }

    final fullNameRegExp = RegExp(r'^[a-zA-Z ]{3,}(?: [a-zA-Z ]{3,}){1,}$');
    if (!fullNameRegExp.hasMatch(fullName)) {
      return 'Please enter a valid full name.';
    }

    if (fullName.length > 85) {
      return 'Full name must not exceed 85 characters.';
    }

    return null;
  }
  static String? isValidOTP(
    String? data,
  ) {
    if (data == null || data.isEmpty) {
      return 'Please enter an OTP.';
    }
    if (data.length > 4) {
      return 'OTP must not exceed 4 characters.';
    }
    if (data.length < 4) {
      return 'OTP must be atleast 4 Characters';
    }
    return null;
  }
  static String? isValidPassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Please enter a password.';
    }

    // Check for at least 8 characters
    if (password.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    return null;
  }
    static String? isValidPhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return 'Please enter a phone number.';
    }
    if (phoneNumber.length > 11) {
      return 'Phone number must not exceed 11 digits.';
    }
    if (phoneNumber.length < 10) {
      return 'Phone number must have at least 10 digits.';
    }
    if (!RegExp(r'^\d+$').hasMatch(phoneNumber)) {
      return 'Phone number should only contain digits.';
    }

    return null;
  }
}