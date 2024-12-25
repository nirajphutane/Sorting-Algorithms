
void main() {
  print(QuickSort([5, 3, 2, -1, 1, 0, -3, 4, -2, 6, 7, -3, -4, 5]).sort());
}

class QuickSort {

  final List<int> _list;

  QuickSort(this._list);

  List<int> sort() {
    _divide(0, _list.length-1);
    return _list;
  }

  void _divide(final int low, final high) {
    if (low < high) {
      final int pivot = _pivot(low, high);
      _divide(low, pivot-1);
      _divide(pivot+1, high);
    }
  }

  int _pivot(final int low, final int high) {
    final int pivot = _list[high];

    int i = low;
    for(int j = low; j < high; j++) {
      if (_list[j] < pivot) {
        _swap(i++, j);
      }
    }

    _list[high] = _list[i];
    _list[i] = pivot;

    return i;
  }

  void _swap(final int i, final int j) {
    final int tmp = _list[i];
    _list[i] = _list[j];
    _list[j] = tmp;
  }
}