-- 第一种表创建的方式
-- 表的声明，声明一个空表
MyTable={}
-- 表的赋值
MyTable[1]=33
MyTable[3]='chinar'
-- 表的赋值 下边两种是相同的，都表示键为：name.所以后边的hello world 会覆盖掉 chianr work
MyTable['name']='chianr work'
MyTable.name='hello world'
-- 输出值
print(MyTable[1],MyTable['name'],MyTable.name)

-- 第二种表创建的方式
-- 表声明，并直接赋值完成初始化。如果名字重复，会直接覆盖之前的表
MyTable={name='chinar',high=175,isFemale=false}
-- 输出MyTable中的isFemale为：false
print(MyTable.isFemale)


-- 第三种创建方式
-- 对应的键为下标，这种表由于全部都是数字，所以可以直接用for循环直接遍历
MyTable={66,777,8888,99999,000000,1}
print(MyTable[1])
-- 遍历表，#MyTable可以获取表的长度
for i=1,#(MyTable) do
	print(MyTable[i])
end
-- 遍历表，同时访问键值。可以用作遍历所有表，不是数字同样可以输出键值
MyTable={name='chinar',high=175,isFemale=false}
for i,v in pairs(MyTable) do
	print(i,v)
end