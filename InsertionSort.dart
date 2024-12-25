
void main() {
  print(InsertionSort([5, 3, 2, -1, 1, 0, -3, 4, -2, 6, 7, -3, -4, 5]).sort());
}

class InsertionSort {

  final List<int> _list;

  InsertionSort(this._list);

  List<int> sort() {

    for (int i = 1; i < _list.length; i++) {
      final int element = _list[i];
      int j = i - 1;
      while (j >= 0 && element < _list[j]) {
        _list[j+1] = _list[j--];
      }
      _list[++j] = element;
    }

    return _list;
  }
}