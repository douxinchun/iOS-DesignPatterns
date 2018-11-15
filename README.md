# iOS-DesignPatterns

iOS Objective-C下的设计模式，备忘，其实代码写多了，很多的模式的思想在工程中会不自觉的使用到，此处总结是为了总结下术语，供面试时使用。

[各个模式详细的动机、定义、优缺点的资料请查看这里](https://design-patterns.readthedocs.io/zh_CN/latest/index.html)，本repo只是简单地实现一下，用于快速的回忆和浏览。

设计模式基本分为三个类型：

1. 创建型模式

   创建型模式(Creational Pattern)对类的实例化过程进行了抽象，能够将软件模块中对象的创建和对象的使用分离。为了使软件的结构更加清晰，外界对于这些对象只需要知道它们共同的接口，而不清楚其具体的实现细节，使整个系统的设计更加符合单一职责原则。

   创建型模式在创建什么(What)，由谁创建(Who)，何时创建(When)等方面都为软件设计者提供了尽可能大的灵活性。创建型模式隐藏了类的实例的创建细节，通过隐藏对象如何被创建和组合在一起达到使整个系统独立的目的

2. 结构型模式

   结构型模式(Structural Pattern)描述如何将类或者对 象结合在一起形成更大的结构，就像搭积木，可以通过 简单积木的组合形成复杂的、功能更为强大的结构。

   结构型模式可以分为类结构型模式和对象结构型模式：

   - 类结构型模式关心类的组合，由多个类可以组合成一个更大的

   系统，在类结构型模式中一般只存在继承关系和实现关系。 - 对象结构型模式关心类与对象的组合，通过关联关系使得在一 个类中定义另一个类的实例对象，然后通过该对象调用其方法。 根据“合成复用原则”，在系统中尽量使用关联关系来替代继 承关系，因此大部分结构型模式都是对象结构型模式。

3. 行为型模式

   行为型模式(Behavioral Pattern)是对在不同的对象之间划分责任和算法的抽象化。

   行为型模式不仅仅关注类和对象的结构，而且重点关注它们之间的相互作用。

   通过行为型模式，可以更加清晰地划分类与对象的职责，并研究系统在运行时实例对象 之间的交互。在系统运行时，对象并不是孤立的，它们可以通过相互通信与协作完成某些复杂功能，一个对象在运行时也将影响到其他对象的运行。

   行为型模式分为类行为型模式和对象行为型模式两种：

   - 类行为型模式：类的行为型模式使用继承关系在几个类之间分配行为，类行为型模式主要通过多态等方式来分配父类与子类的职责。
   - 对象行为型模式：对象的行为型模式则使用对象的聚合关联关系来分配行为，对象行为型模式主要是通过对象关联等方式来分配两个或多个类的职责。根据“合成复用原则”，系统中要尽量使用关联关系来取代继承关系，因此大部分行为型设计模式都属于对象行为型设计模式。

## 单例模式 Singleton

> 保证一个类仅有一个实例，并提供一个访问它的全局访问点。

例如：UIApplication，NSUserDefault, NSFileManager.

### UML

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/Singleton.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_Singleton.jpg)

## 工厂方法模式 Factory Method

- Product：抽象产品
- ConcreteProduct：具体产品
- Factory：抽象工厂
- ConcreteFactory：具体工厂
  代码实现中用了两个产品A和，同时对应了两个工厂类，FactoryA和FactoryB

### UML

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/FactoryMethod.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_FactoryMethod.jpg)

## 抽象工厂模式 (Abstract Factory)

### UML

- AbstractFactory：抽象工厂
- ConcreteFactory：具体工厂
- AbstractProduct：抽象产品
- Product：具体产品

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/AbatractFactory.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_AbatractFactory.jpg)



## 简单工厂模式 Simple Factory

简单工厂模式包含如下角色：

 - Factory：工厂角色

    工厂角色负责实现创建所有实例的内部逻辑

 - Product：抽象产品角色

    抽象产品角色是所创建的所有对象的父类，负责描述所有实例所共有的公共接口

 - ConcreteProduct：具体产品角色

    具体产品角色是创建目标，所有创建的对象都充当这个角色的某个具体类的实例。

### UML

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/SimpleFactory.jpg)

### 时序图 

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_SimpleFactory.jpg)

## 建造者模式 生成器 Builder

> 将一个复杂对象的构建与它的表现分离，使得同样的构建过程可以创建不同的表现。

建造者模式包含如下角色：

- Builder：抽象建造者
- ConcreteBuilder：具体建造者
- Director：指挥者
- Product：产品角色

### UML

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/Builder.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_Builder.jpg)

## 适配器模式 Adapter

- Target：目标抽象类
- Adapter：适配器类
- Adaptee：适配者类 (被适配的一方)
- Client：客户类

### UML

#### 对象适配器

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/Adapter.jpg)

#### 对象适配器

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/Adapter_classModel.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_Adapter.jpg)

## 外观模式 Facade

> 外观模式(Facade Pattern)：外部与一个子系统的通信必须通过一个统一的外观对象进行，为子系统中的一组接口提供一个一致的界面，外观模式定义了一个高层接口，这个接口使得这一子系统更加容易使用。外观模式又称为门面模式，它是一种对象结构型模式

- Facade: 外观角色
- SubSystem:子系统角色

### UML

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/Facade.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_Facade.jpg)



### 桥接模式

> **桥接模式(Bridge Pattern)：将抽象部分与它的实现部分分离，使它们都可以独立地变化。它是一种对象结构型模式，又称为柄体(Handle and Body)模式或接口(Interface)模式。**

- Abstraction：抽象类
- RefinedAbstraction：扩充抽象类
- Implementor：实现类接口
- ConcreteImplementor：具体实现类

### UML

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/Bridge.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_Bridge.jpg)

## 装饰模式

装饰模式(Decorator Pattern) ：动态地给一个对象增加一些额外的职责(Responsibility)，就增加对象功能来说，装饰模式比生成子类实现更为灵活。其别名也可以称为包装器(Wrapper)，与适配器模式的别名相同，但它们适用于不同的场合。根据翻译的不同，装饰模式也有人称之为“油漆工模式”，它是一种对象结构型模式。

- Component: 抽象构件
- ConcreteComponent: 具体构件
- Decorator: 抽象装饰类
- ConcreteDecorator: 具体装饰类

### UML

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/Decorator.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_Decorator.jpg)

## 享元模式（Flyweight）

享元模式(Flyweight Pattern)：运用共享技术有效地支持大量细粒度对象的复用。系统只使用少量的对象，而这些对象都很相似，状态变化很小，可以实现对象的多次复用。由于享元模式要求能够共享的对象必须是细粒度对象，因此它又称为轻量级模式，它是一种对象结构型模式。

- Flyweight: 抽象享元类
- ConcreteFlyweight: 具体享元类
- UnsharedConcreteFlyweight: 非共享具体享元类
- FlyweightFactory: 享元工厂类

### UML （这个图有问题，标记一下，以后重画）

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/Flyweight.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_Flyweight.jpg)

## 代理模式

代理模式(Proxy Pattern) ：给某一个对象提供一个代 理，并由代理对象控制对原对象的引用。代理模式的英 文叫做Proxy或Surrogate，它是一种对象结构型模式。

- Subject: 抽象主题角色
- Proxy: 代理主题角色
- RealSubject: 真实主题角色

### UML

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/Proxy.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_Proxy.jpg)

## 命令模式

命令模式(Command Pattern)：将一个请求封装为一个对象，从而使我们可用不同的请求对客户进行参数化；对请求排队或者记录请求日志，以及支持可撤销的操作。命令模式是一种对象行为型模式，其别名为动作(Action)模式或事务(Transaction)模式。

- Command: 抽象命令类
- ConcreteCommand: 具体命令类
- Invoker: 调用者
- Receiver: 接收者
- Client:客户类

### UML

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/Command.jpg)

### **时序图**

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_Command.jpg)

## 中介者模式 

中介者模式(Mediator Pattern)定义：用一个中介对象来封装一系列的对象交互，中介者使各对象不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。中介者模式又称为调停者模式，它是一种对象行为型模式。

- Mediator: 抽象中介者
- ConcreteMediator: 具体中介者
- Colleague: 抽象同事类
- ConcreteColleague: 具体同事类

### UML

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/Mediator.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_Mediator.jpg)

## 观察者模式

观察者模式(Observer Pattern)：定义对象间的一种一对多依赖关系，使得每当一个对象状态发生改变时，其相关依赖对象皆得到通知并被自动更新。观察者模式又叫做发布-订阅（Publish/Subscribe）模式、模型-视图（Model/View）模式、源-监听器（Source/Listener）模式或从属者（Dependents）模式。

- Subject: 目标
- ConcreteSubject: 具体目标
- Observer: 观察者
- ConcreteObserver: 具体观察者

Observer从Subject订阅通知，ConcreteObserver实现抽象Observer并重载其update方法。一旦Subject的实例需要通知Observer任何新的变更，Subject会发送update消息来通知存储在其内部列表中所有注册的Observer。在ConcreteObserver的update方法的实际实现中，Subject的内部状态可被取得并在以后进行处理。

### UML

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/Obeserver.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_Obeserver.jpg)

## 状态模式

状态模式(State Pattern) ：允许一个对象在其内部状态改变时改变它的行为，对象看起来似乎修改了它的类。其别名为状态对象(Objects for States)，状态模式是一种对象行为型模式。

- Context: 环境类
- State: 抽象状态类
- ConcreteState: 具体状态类

### UML

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/State.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_State.jpg)

## 策略模式

策略模式(Strategy Pattern)：定义一系列算法，将每一个算法封装起来，并让它们可以相互替换。策略模式让算法独立于使用它的客户而变化，也称为政策模式(Policy)。

- Context: 环境类

- Strategy: 抽象策略类

- ConcreteStrategy: 具体策略类


### UML

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/Strategy.jpg)

### 时序图

![](https://design-patterns.readthedocs.io/zh_CN/latest/_images/seq_Strategy.jpg)