
void main() {
  print(MergeSort([5, 3, 2, -1, 1, 0, -3, 4, -2, 6, 7, -3, -4, 5]).sort());
}

class MergeSort {

  final List<int> _list;

  MergeSort(this._list);

  List<int> sort() {
    _divide(0, _list.length-1);
    return _list;
  }

  void _divide(final int low, final int high) {
    if (low < high) {
      final int mid = (low + high) ~/ 2;
      _divide(low, mid);
      _divide(mid+1, high);
      _conquer(low, mid, high);
    }
  }

  void _conquer(final int low, final int mid, final int high) {
    int i = 0;
    int idx1 = low;
    int idx2 = mid+1;

    final List<int?> sorted = List.generate(high-low+1, (index) => null);

    while(idx1 <= mid && idx2 <= high) {
      if (_list[idx1] < _list[idx2]) {
        sorted[i++] = _list[idx1++];
      } else {
        sorted[i++] = _list[idx2++];
      }
    }

    while(idx1 <= mid) {
      sorted[i++] = _list[idx1++];
    }

    while(idx2 <= high) {
      sorted[i++] = _list[idx2++];
    }

    for (int i = 0, j = low; i < sorted.length; i++, j++) {
      _list[j] = sorted[i]!;
    }
  }
}