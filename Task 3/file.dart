import 'dart:io';

void main() {
  File file2 = File("file2.txt");
  File file3 = File("file3.txt");
  File file = File("file1.txt");

  print(file.readAsStringSync());
  print('------------------File1---------------------');
  print(file2.readAsStringSync());
  print('------------------File2---------------------');
  print(file3.readAsStringSync());
  print('------------------File3---------------------');
}
