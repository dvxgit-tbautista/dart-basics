void main() {
  List<int> numberList = [3, 4, 5, 6, 7, 5];
  List<int> secondList = [];

  /*for (int i = 0; i < numberList.length; i++) {
    // secondList.add(i);
    // print(secondList);

    if (numberList[i] == 3) {
      secondList.add(numberList[i]);
    }
    print('list element: ${numberList[i]}');
  }*/

  numberList.forEach((element) {
    element++;
    print(element);
    secondList.add(element);
  });
  print(numberList);
  print(secondList);
}
