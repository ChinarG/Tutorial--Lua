-- 如果DeBug中有luanet.dll文件，则不需要再次引用
-- require "luanet"
-- 加载CLR类型("命名空间")
luanet.load_assembly("System")
-- 加载命名空间下的类
Int32 = luanet.import_type("System.Int32")
-- 输出
print(Int32)
print('- - - - - - - - - - - - - - - - - - - - - - - - - - ')


-- 加载CLR类型("命名空间"ChinarTest)
luanet.load_assembly("ChinarTest")
-- 加载命名空间下的类Program
Pro=luanet.import_type("ChinarTest.Program")

-- 实例化一个类对象
pro=Pro()
-- 输出
print(pro.ChinarNum)

-- 调用C#中的方法
pro:ChinarTestFun()

-- 调用Out方法，out参数不需要传入值，会直接返回类型为一个：表
-- 由于C#那边是一个空返回值的方法，所以第一个返回为空
-- 第二个返回 out参数
void,stringCount=pro:TestOut("chinar.fun")
print(void,stringCount)

-- Ref参数
void1,stringCount1=pro:TestRef("chinar.fun",8)
print(void1,stringCount1)