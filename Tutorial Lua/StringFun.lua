name="name is chinar,hello world.CSDN"

-- string.lower —— 字符串转：小写
print(string.lower(name))

-- string.upper —— 字符串转：大写
print(string.upper(name))

-- string.sub —— 字符串提取字符：从name中的第1个到第6个（算上空格）
print(string.sub(name,1,6))

-- string.find —— 字符串查找字符：从name中找字符串 hel，返回下标表示从几到几
print(string.find(name,'hel'))

-- .. —— 字符串拼接
print('fps://'..name)
