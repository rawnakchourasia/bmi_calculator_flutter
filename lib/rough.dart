class Car {
  Function drive;

  Car(this.drive);
}

void slowDrive() {
  print("Driving slowly");
}

void fastDrive() {
  print("Driving super fast");
}

void main() {
  Car myCar = Car(slowDrive);
  myCar.drive(); // Output: Driving slowly

  myCar.drive = fastDrive;
  myCar.drive(); // Output: Driving super fast
}
