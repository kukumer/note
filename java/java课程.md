[toc]
# introduction to java programming
## 课程介绍
《Introduction to Java Programming》Pearson Press(10th ed)

答疑时间：约时间就行 7号楼103  
邮箱：wangyuecs@cufe.edu.cn

学习内容：
1. 基本语法
2. 面向对象程序设计(全面支持面向对象的)
3. java高级编程,GUI
4. 基本算法理论

考试：英文期末闭卷考试（60%）+平时成绩（10%）+上机成绩（30%）（上机报告期末统一交）
> 出勤情况影响平时成绩

### why java?

# eclipse使用教程
## 基本结构
1. [偏好(preference)](https://www.runoob.com/eclipse/eclipse-preferences.html)   
eg. Eclipse修改字符集，改变字体，设置代码自动提示
> 这个一般是根据个人习惯进行一些个性化的设置

![image](A84D4DF259DB470A90A9BE3F8C399801)


2. 工作台（Workbench）

![image](6C0C4BAEE5B84EAAA3A73F89FC1B99E3)

3. [调整视图(view)](https://www.runoob.com/eclipse/eclipse-explore-views.html)

4. [调整透视图(perspective](https://www.runoob.com/eclipse/eclipse-perspectives.html)

5. [工作空间管理(Workspace)](https://www.runoob.com/eclipse/eclipse-workspaces.html)

## java项目创建
1. [创建java项目(project)](https://www.runoob.com/eclipse/eclipse-create-java-project.html)  
见下图：

![image](4E7D7E372758434E8239F2C04D654EF2)

2. [java包(package)](https://www.runoob.com/eclipse/eclipse-create-java-package.html)  
java包的作用，为了更好地组织类，java提供了包机制，用于区分类名的命名空间。
- 把功能相似或相关的类或接口组织在同一个包中，方便类的查找和使用。
- 如同文件夹一样，包也采用了树形目录的存储方式。同一个包中的类名字是不同的，不同的包中的类的名字是可以相同的，当同时调用两个不同包中相同类名的类时，应该加上包名加以区别。因此，包可以避免名字冲突。
- 包也限定了访问权限，拥有包访问权限的类才能访问某个包中的类。

3. [创建java类(class)](https://www.runoob.com/eclipse/eclipse-create-java-class.html)

4. [创建java接口(interface)](https://www.runoob.com/eclipse/eclipse-create-java-interface.html)  
接口是一个抽象方法的集合，它不描述对象的属性和方法。   
[java接口及接口与类的关系](https://www.runoob.com/java/java-interfaces.html)

5. [创建XML](https://www.runoob.com/eclipse/eclipse-create-xml-file.html)  
[XML简介](https://www.runoob.com/xml/xml-intro.html)  
- XML被用来设计传输和存储数据
- XML不会做任何事情

6. [生成jar包](https://www.runoob.com/eclipse/eclipse-create-jar-files.html)  
jar包的作用：用于封装class、properties文件，是文件封装的最小单位；包含java类的普通库、资源(resources)、辅助文件(auxiliary files)等，可以将程序功能提供给他人的同时保证隐藏程序的逻辑。

## java程序的运行
1. [运行配置(run configurations)](https://www.runoob.com/eclipse/eclipse-run-configuration.html)   
运行配置的一个重要功能就是[传参](https://blog.csdn.net/a2011480169/article/details/52756476)，我理解的运行配置主要就是传参用的

2. [运行java的程序](https://www.runoob.com/eclipse/eclipse-running-program.html)


3. [编译java项目](https://www.runoob.com/eclipse/eclipse-build-project.html)

4. [java debug配置](https://www.runoob.com/eclipse/eclipse-debug-configuration.html)

5. [java debug调试](https://www.runoob.com/eclipse/eclipse-debugging-program.html)

## Eclipse使用技巧
1. 内容辅助（自动提示）
- 输入首字母之后按alt+/后就出现自动提示
- 输入"."后会自动提示类变量、类方法、超类方法和其他相关类

2. 快速修复（自动纠错）  
- 红色波浪线突出错误，黄色波浪线突出警告，在problem视图中显示错误和警告，在垂直标尺上显示黄色小灯泡及警告和错误标识。
- 快速修复的方法是将鼠标放在波浪线所在行，按下快捷键Crtl+1

3. [悬浮提示](https://www.runoob.com/eclipse/eclipse-hover-help.html)

![image](66D4FCDB53D641D98CD2C543BE6A1213)

4. [eclipse查找](https://www.runoob.com/eclipse/eclipse-search-menu.html)   
快捷键Crtl+H

5. [navigate使用](https://www.runoob.com/eclipse/eclipse-navigation.html)  
如其名所说，导航浏览有点像给你列个List的感觉

6. [重构菜单](https://www.runoob.com/eclipse/eclipse-refactoring.html)  
在项目开发中我们经常需要修改类名，但如果其他类依赖该类时，我们就需要花很多时间去修改类名。但 Eclipse 重构功能可以自动检测类的依赖关系并修改类名，帮我们节省了很多时间。

7. [书签bookmarks](https://www.runoob.com/eclipse/eclipse-add-bookmarks.html)
- 使用书签作为提示信息
- 使用书签快速定位到文件中的指定的行

8. [Eclipse任务管理](https://www.runoob.com/eclipse/eclipse-task-management.html)   
说白了就是设置todo事项，跟书签有点异曲同工的意思

9. [代码模块](https://www.runoob.com/eclipse/eclipse-code-templates.html)

![image](68C082AD8FB84EBCB1EFB5057FEFA937)

10. [eclipse常用快捷键](https://www.runoob.com/eclipse/eclipse-shortcuts.html)

11. [eclipse内置浏览器](https://www.runoob.com/eclipse/eclipse-web-browsers.html)

## 计算机的结构
### hardware
冯洛伊曼体系结构：CPU/Memory/Storage Devices/input Devices/output Devices/Communication Devices

### programs/software
machine language/assembly language(assembler)/High-level Language
### interpreting/comiling source code
source code -> compile and link -> machine-code file 
### Operating systems
Application programs & Operating system

## java特征
1. simple
2. Object-Oriented
3. Distributed
4. Interpreted
5. Robust
6. Secure
7. Architecture-Neutral
8. Portable
9. Performance
10. Multithreaded
11. Dynamics

## java程序
```
public class Welcome(ComputeName){
   public static void main(String[]args) {
       System.out.println("welcome to java")
   }
}
```

## 基本规范
```java
// Variables and method names:
eg. radius area computeArea
// Class names:
class Welcome {}
class ComputeArea{}
// Constants:
eg. PI MAX_VALUE 
```



Programming style and documentation

1. Appropriate Comments
2. Naming Conventions
3. Proper Indentation and Spacing Lines
4. Block styles

错误类型：
1. Grammar
2. Runtime
3. Logic

```
//eclipse的注释
/***
*/ 
```
# 
命名规范
数据类型
> 3/2 = 1 3.0/2.0 = 1.5

> 1.0-0.1-0.1-0.1-0.1-0.1 = 0.500000000000001 
只有整形存的是准确的数，但是浮点数在存储的时候会有一个误差

1.0-0.1循环成为一个死循环

在后面加个L/l可以设定为long

常犯的错误：
1. Uninitilized variables/unused varibles
2. Integer Overflow
3. Round-off Errors
> 就是上面的那个小数乱七八糟的例子
4. Unintended Integer division

常见的陷阱
1. Redundant Input Objects
==Q?==

选择相关的逻辑和代码
boolean b = (1 > 2)

操作符的结合性和优先级

输入输出流：

即使不是string类型的也是可以用+来连接的

```java
// Create a Scanner object
Scanner input = new Scannar(System.in);
// Use the method nextDouble() to obtain to a double value. For example,
double d = input.nextDouble();
// Use the system.out.println to print out
System.out.println("The area for the circle of radius "  +  radius + " is " + area);
// 不单单是字符串可以用+连接，其他数据类型（在这里radius/area是double类型，也可以使用+进行连接）
```

![1571056453842](D:\picture\1571056453842.png)

java double型数据：
![1571056764791](D:\picture\1571056764791.png)

转成double类型之后是可以解决这个问题的

