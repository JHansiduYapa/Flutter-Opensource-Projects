String removeTrailingZeros(double value) {
    String text = value.toString();

    // If the value has a decimal point
    if (text.contains('.')) {
      // Remove trailing zeros after the decimal point
      text = text.replaceAll(RegExp(r"0*$"), "");

      // Remove the decimal point if there are no digits after it
      text = text.replaceAll(RegExp(r"\.$"), "");
    }

    // Handle the special case of numbers less than 1
    if (text.startsWith(".")) {
      text = "0$text";
    }

    return text;
  }







