void main() {
  int outputInt = 2;

  print('number is: $outputInt');

  late int lateOutputInt;

  lateOutputInt = 10;
  print('lateOutputInt: $lateOutputInt');

  String myname = "Diane";
  int age = 24;
  print("my age is $age");
  print("my name is $myname");

  bool boolOutput = true;
  print(boolOutput);

  double doubleOutput = 1.5;
  print("double output: $doubleOutput");

  print("Hello, $myname. is your age $age?");

  var varOutput = "Greetings";
  // varOutput = 24; //invalid
  varOutput = "Hello world!";

  //var - doesnt have to assign data type, after getting the value, then it will assign the data type.

  print(varOutput);

  //---------KEYWORDS-----------
  //late
  //final
  //const
  //var
  //dynamic = no specific data type (not recommended)
}
