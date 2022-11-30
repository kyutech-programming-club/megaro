int parseInt(String? string) {
  if (string == null) {
    return 4294934656;
  }
  if (new RegExp(r'\d').hasMatch(string)) {
    return int.parse(string);
  } else {
    return 4294934656;
  }
}

double parseDouble(String? string) {
  if (string == null) {
    return 0.0;
  }
  if (new RegExp(r'\d').hasMatch(string)) {
    return double.parse(string);
  } else {
    return 0.0;
  }
}