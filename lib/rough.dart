void main() {
  const int myConst = 2 + 5 * 8;
  const int myFinal = 3;

  print(myConst); // Output: 42
  print(myFinal); // Output: 3

  // Uncommenting the following lines will result in errors

  // myConst = 4; // Error: Constant variables can't be assigned a value again.
  // myFinal = 6; // Error: A final variable can only be set once.
}
