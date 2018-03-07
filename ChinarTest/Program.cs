using System;
using LuaInterface; //引用命名空间


namespace ChinarTest
{
    /// <summary>
    /// 测试类
    /// </summary>
    class Program
    {
        static void Main(string[] args)
        {
            Lua lua = new Lua(); //创建一个lua解释器


            lua["num"] = 66;               //用C#脚本在lua环境中，创建一个变量
            lua["str"] = "chinar";         //用C#脚本在lua环境中，创建一个字符串变量
            Console.WriteLine(lua["num"]); //输出
            Console.WriteLine(lua["str"]); //输出


            lua.DoString("num=666");                          //用C#脚本在lua环境中，创建一段lua脚本：num=666
            lua.DoString("str='chianr666'");                  //用C#脚本在lua环境中，创建一段lua脚本：str='chianr666'
            object[] values = lua.DoString("return num,str"); //用一个object数组 去接受返回值
            foreach (var value in values)                     //遍历 values 数组中的元素
            {
                Console.WriteLine(value); //输出
            }


            lua.DoFile("Chinar.lua"); //加载lua文件 —— lua.DoFile（文件名）


            Program program = new Program(); //声明一个对象
            //lua.RegisterFunction 注册方法（注册到Lua中以后方法的名称，程序对象，程序的类型program.GetType().（传入C#中的方法名：需要是公有方法））
            lua.RegisterFunction("LuaChinarTest", program, program.GetType().GetMethod("ChinarTest"));
            //然后用lua.DoString(Lua中方法名())调用测试
            lua.DoString("LuaChinarTest()");

            //lua.RegisterFunction 注册静态方法（注册到Lua中以后方法的名称，空，程序的类型 typeof(Program).（传入C#中的方法名：需要是公有方法））
            lua.RegisterFunction("LuaChinarStaticTest", null, typeof(Program).GetMethod("ChinarStaticTest"));
            //然后用lua.DoString(Lua中静态方法名())调用测试
            lua.DoString("LuaChinarStaticTest()");


            lua.DoFile("ChinarClass.lua"); //Lua引用C#中的类


            Console.ReadKey(); //等待输入
        }


        /// <summary>
        /// 一个测试方法
        /// </summary>
        public void ChinarTest()
        {
            Console.WriteLine("这是一个空方法");
        }


        /// <summary>
        /// 一个静态测试方法
        /// </summary>
        public static void ChinarStaticTest()
        {
            Console.WriteLine("这个一个静态空方法");
        }


        public int    ChinarNum = 60;       //整形变量
        public string Name      = "Chinar"; //字符串变量


        /// <summary>
        /// 用来让Lua脚本测试的方法
        /// </summary>
        public void ChinarTestFun()
        {
            Console.WriteLine("你好,Chinar");
        }


        /// <summary>
        /// Ref方法，参数
        /// </summary>
        /// <param name="name"></param>
        /// <param name="count"></param>
        public void TestRef(string name, ref int count)
        {
            Console.WriteLine(name);
            Console.WriteLine(count);
            count = name.Length;
        }


        /// <summary>
        /// Out方法，参数
        /// </summary>
        /// <param name="name"></param>
        /// <param name="count"></param>
        public void TestOut(string name, out int count)
        {
            Console.WriteLine(name);
            count = name.Length;
        }
    }
}