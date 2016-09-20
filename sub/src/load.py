import pickle

out = {}

with open('data.txt', 'rb') as f:
    out = pickle.load(f)

#print(out)

for who, data in out.items():
    print(who, data)
