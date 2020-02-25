var
  a = @[1, 2, 3]
  b = newSeq[int](3)

for i, v in a:
  b[i] = v*v

for i in 4..100:
  b.add(i * i)

b.delete(0)  # takes O(n) time
b = a[0] & b  # Same as original b