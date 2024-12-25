
void main() {
  print(BubbleSort([5, 3, 2, -1, 1, 0, -3, 4, -2, 6, 7, -3, -4, 5]).sort());
}

class BubbleSort {

  final List<int> _list;

  BubbleSort(this._list);

  List<int> sort() {
    for (int i = 0; i < _list.length-1; i++) {
      for (int j = i+1; j < _list.length; j++) {
        if (_list[i] > _list[j]) {
          final int tmp = _list[i];
          _list[i] = _list[j];
          _list[j] = tmp;
        }
      }
    }
    return _list;
  }
}