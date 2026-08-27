void main() async {
  print('feching data...');
  fetchData().then((data) {
    print(data);
  });
  print('data fetching completed');


  await for (var num in numberStream()){
    print(num);
  }

}

Future<String> fetchData() async {
  //3 seconds delay
  await Future.delayed(Duration(seconds: 3));
  return 'Data Loaded';
}

Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 3));
    yield i;
  }
}