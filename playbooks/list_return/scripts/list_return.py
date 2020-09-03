
lst = ['item1', 'item2', 'item3']

print('[{}]'.format(','.join('"{0}"'.format(w) for w in lst)))
