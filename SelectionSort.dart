
void main() {
  print(SelectionSort([5, 3, 2, -1, 1, 0, -3, 4, -2, 6, 7, -3, -4, 5]).sort());
}

class SelectionSort {

  final List<int> _list;

  SelectionSort(this._list);

  List<int> sort() {
    for (int i = 0; i < _list.length; i++) {
      int smallestIndex = i;
      for (int j = i+1; j < _list.length; j++) {
        if (_list[smallestIndex] > _list[j]) {
          smallestIndex = j;
        }
      }
      final int tmp = _list[smallestIndex];
      _list[smallestIndex] = _list[i];
      _list[i] = tmp;
    }
    return _list;
  }
}