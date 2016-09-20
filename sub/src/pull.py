#import requests
#html = requests.get('http://www.38.co.kr/html/fund/index.htm?o=nw').content
#with open('1.html', 'wb') as f: f.write(html)
#with open('1.html', 'rb') as f: html = f.read()
#root = lxml.html.fromstring(html.decode('cp949'))

import lxml.html

x = {}

for page in range(1, 10):
    root = lxml.html.parse('http://www.38.co.kr/html/fund/index.htm?o=nw&page={}'.format(page)).getroot()
    t = root.cssselect('body>table[align=center]')[2]
    t = t.cssselect('table')[11]
    print('page {}'.format(page))
    for tr in t.cssselect('tr')[2:]:
        #print('|'.join(td.text_content() for td in tr.cssselect('td')))
        out = [td.text_content().strip() for td in tr.cssselect('td')]
        x[out[0]] = [out[4], out[6]]


for page in range(1, 10):
    root = lxml.html.parse('http://www.38.co.kr/html/fund/index.htm?o=k&l=&page={}'.format(page)).getroot()
    t = root.cssselect('body>table[align=center]')[2]
    t = t.cssselect('table')[11]
    print('page {}'.format(page))
    for tr in t.cssselect('tr')[2:]:
        #print('|'.join(td.text_content() for td in tr.cssselect('td')))
        out = [td.text_content().strip() for td in tr.cssselect('td')]
        if (out[0] in x):
            x[out[0]].append(out[4])

print(x)
import pickle
with open('data.txt', 'wb') as f:
    f.write(pickle.dumps(x))
