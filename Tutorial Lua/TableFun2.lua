MyTable={'dd',66,777,8888,99999,000000,1}
-- table.concat()合并表中的字符串，值。输出一长串的字符串
print(table.concat(MyTable))

-- table.insert 在表中插入一个元素
table.insert(MyTable,4,"chianr")--相当于MyTable[4]="chianr"
print(MyTable[4])

-- 移除指定位置数据
print(MyTable[1])--当前第二个元素为dd
-- 移除第二个元素
table.remove(MyTable,1)
print(MyTable[1])--当前第二个元素为66

MyTable={66,777,8888,99999,000000,1}
-- table.sort 从小到大排列
table.sort(MyTable)
print(table.concat(MyTable))

-- table.unpack返回一个指定范围的数组
print(table.unpack(MyTable,2,3))



