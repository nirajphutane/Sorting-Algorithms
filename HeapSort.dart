
/*
* Heap:
* Internal Nodes:- 0 to (N~/2)-1
* Leaves: N/2 tp N-1
*/

void main() {
  print(MinHeapSort([5, 3, 2, -1, 1, 0, -3, 4, -2, 6, 7, -3, -4, 5]).sort());
}

class MinHeapSort {

  final List<int> _heap;

  int get _size => _heap.length;

  MinHeapSort(this._heap);

  List<int> sort() {
    _buildMinHeap();
    _extractMin();
    return _heap;
  }

  void _buildMinHeap() {
    for (int i = (_size-1) ~/ 2; i >= 0; i--){
      _downHeapify(i, _size);
    }
  }

  void _extractMin() {
    for (int i = _size-1; i >= 0; i--) {
      _swap(0, i);
      _downHeapify(0, i);
    }
  }

  void _downHeapify(final int parent, final int size) {
    int p = parent;

    int child = parent.leftChild();
    if (child < size && _heap[child] > _heap[p]) {
      p = child;
    }

    child = parent.rightChild();
    if (child < size && _heap[child] > _heap[p]) {
      p = child;
    }

    if (p != parent) {
      _swap(p, parent);
      _downHeapify(p, size);
    }
  }

  void _swap(final int i, final int j) {
    final int tmp = _heap[i];
    _heap[i] = _heap[j];
    _heap[j] = tmp;
  }
}

extension Heap on int {
  int leftChild() => (2 * this) + 1;
  int rightChild() => (2 * this) + 2;
}