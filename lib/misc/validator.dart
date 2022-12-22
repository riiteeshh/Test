String? emailvalidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Field cannot be empty';
  } else if (!value.contains('@') || !value.contains('.com')) {
    return 'Not Valid E-mail';
  }
  return null;
}

String? passwordvalidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Field cannot be empty';
  }
  return null;
}
