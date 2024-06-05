class Validator {
  static String? emailValidator(String? val) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);
    if (val!.isEmpty) {
      return "Email is required";
    }
    return !regex.hasMatch(val) ? 'Enter a valid email address' : null;
  }

  static String? passwordValidator(String? val) {
    if (val!.isEmpty) {
      return "Password is required";
    }
    if ((val.length) < 6) {
      return "Password must be more than 6 characters";
    }
    return null;
  }

  static String? requiredValidator(String? val) {
    if (val == null) {
      return "This field is required";
    }
    if (val.isEmpty) {
      return "This field is required";
    }
    return null;
  }

  static String? phoneNumberValudator(String? val) {
    if (val == null || val.isEmpty) {
      return "This field is required";
    }
    if (val.length < 7) {
      return "Input valid phone number";
    }
    return null;
  }
}
