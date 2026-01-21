void main() {
  List<int> a = [1, 3, 5, 7];
  List<int> b = [2, 4, 6, 8];
  List<int> c = [];
  c.addAll(a);
  c.addAll(b);
  c.sort();
  print(c);
  print("nilai terbesar kedua adalah: ${c[c.length - 2]}");
}
