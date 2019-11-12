说明：本md文档中的内容与菜鸟教程中对应

# java基础语法

<b>enum的使用</b>

简单使用方法：

```java
enum Car {
    lamborghini,tata,audi,fiat,honda
}
public class Main {
    public static void main(String args[]){
        Car c;
        c = Car.tata;
        switch(c) {
            case lamborghini:
                System.out.println("lamborghini!");
                break;
            case tata:
                System.out.println("我的名字是tata!");
                break;
            case audi:
                System.out.println("audi!");
                break;
            case fiat:
                System.out.println("fiat!");
                break;
            case honda:
                System.out.println("honda!");
                break;
            default:
                System.out.println("I don't know");
                break;
        }
    }
}
```

值得注意的是java的枚举型变量赋值必须将“命名空间“写出来，即Car.tata，不同于C++中可以直接用数字或者”类字符串“来赋初值



<b>关于汉字编译的问题</b>

[GBK的不可映射字符处理方法]( https://jingyan.baidu.com/article/e3c78d649a56233c4c85f502.html )

可以在编译的时候，即javac的时候

```java
javac -encoding UTF-8 Main.java
```



# java对象和类

```java
public class Puppy{
   int puppyAge;
   public Puppy(String name){
      // 这个构造器仅有一个参数：name
      System.out.println("小狗的名字是 : " + name ); 
   }
 
   public void setAge( int age ){
       puppyAge = age;
   }
 
   public int getAge( ){
       System.out.println("小狗的年龄为 : " + puppyAge ); 
       return puppyAge;
   }
 
   public static void main(String[] args){
      /* 创建对象 */
      Puppy myPuppy = new Puppy( "tommy" );
      /* 通过方法来设定age */
      myPuppy.setAge( 2 );
      /* 调用另一个方法获取age */
      myPuppy.getAge( );
      /*你也可以像下面这样访问成员变量 */
      System.out.println("变量值 : " + myPuppy.puppyAge ); 
   }
}
```

值得注意的是，java和C++不同，仔细观察你会发现==可以把入口定义在类里面==，而且主函数与类中的成员变量和方法的先后==顺序是不会产生影响==的，哪怕把入口调到最前面去也是没问题的。

<b>源文件声明规则</b>

1. 一个源文件==只能有一个public类==
2. 一个源文件可以有多个非public类
3. 源文件的名称应该与public类的类名==保持一致==
4. 如果一个类定义在某个包中，那么package语句应该在源文件的首行
5. 如果源文件包含import语句，那么应该放在package语句和类定义之间。如果没有package语句，那么import语句应该在源文件的最前面。
6. import语句和package语句对源文件中定义的所有类==都有效==。在一个源文件中，不能给不同的类不同的包声明。

<b>类的管理</b>

![image-20191111210437862](D:\picture\image-20191111210437862.png)

