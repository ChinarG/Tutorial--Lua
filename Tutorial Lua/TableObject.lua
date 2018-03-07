-- 类的声明
People={}
local this=People
-- 类变量
People.hp=100
People.sp=1000

-- 第一种声明方法的操作
People.Fangfa=function( ... )
	print('chinar')
end
-- 第二种声明方法的操作
function People.Run( ... )
	this.Fangfa()--方法中调用已经声明的方法
	print(this.hp,"Run")
end

-- 调用方法
People.Run()