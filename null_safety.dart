void main() {
  int nonNullable = 10; // this value cannot be null
  int? nullableInt = null; // this value can be null
  // nullableInt = 10;

  late String description;
  // dart trusts us that we will put a value in the late variable
  // however, if we print it without giving it a value, it gets an error
  description = "sample description";

  int value = nullableInt!; // this gets an error if nullableInt is empty
  int value2 =
      nullableInt!; // non null assertion operator ensures dart this is not null by the time of running

  int value3 = nullableInt; // not error because the code just above

  int value4 = nullableInt ?? 1; // add default values

  String? nullableString = null;
  int stringLength = nullableString?.length ??
      0; // if nullableString is null, stringLength is set to default 0
}
