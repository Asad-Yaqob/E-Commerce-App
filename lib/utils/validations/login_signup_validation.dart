class LoginSignupValidation {

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegEx =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (!emailRegEx.hasMatch(value)) {
      return 'Invalid email address';
    }

    return null;
  }

  static String? validatePassword(String? value){
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    final numberRegex = RegExp(r'^(?=.*[0-9])');

    if (!numberRegex.hasMatch(value)) {
      return 'Password must contain alteast one number';
    }

    final specialCharRegex =  RegExp(r"[!@#$%^&*()_+=\-{}|:;\'<>,.?/\\]");


    if (!specialCharRegex.hasMatch(value)) {
      return 'Password must contain alteast one symbol';
    }

    return null;
  }
}
