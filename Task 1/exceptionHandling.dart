void main() {
  try {
    int num = 10 ~/ 0;
    print(num);
  } catch (e) {
    print("An error occurred: $e");
  }finally {
    print("This block is always executed.");
  }
}
