void main() {
  List exampleList = [1, 2, 3, 4];
  print(exampleList[3]);
  print(exampleList[1]);

  List<int> secondList = [1, 2, 3, 4, 5, 6, 7];
  print(secondList);

  List<double> thirdList = [1, 2, 3.5, 4.7, 5.654, 2.435, 54.32];
  print(thirdList);

  print(exampleList[3] + exampleList[3]);

  List<dynamic> fourthList = [1, 32.5, "diane", 54];
  print(fourthList);

  print(fourthList.length);
  print(fourthList.isNotEmpty);
  print(fourthList.reversed);
  print(fourthList.first);
  print(fourthList.indexed);

  var reversed = fourthList.reversed;
  print(reversed);
  fourthList.add("trixie diane");
  print(fourthList);

  //key value structure
  Map<String, dynamic> exampleMap = {"key1": 23432, "key2": "value 2"};

  print(exampleMap);
  print(exampleMap["key2"]);
  print(exampleMap.entries);
  print(exampleMap.length);
  print(exampleMap.isNotEmpty);
  print(exampleMap.keys);
  print(exampleMap.values);
}
