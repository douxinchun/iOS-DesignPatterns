//
//  ViewController.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/10/31.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"
#import "ConcreteFactoryA.h"
#import "ConcreteFactoryB.h"
#import "ProductProtocol.h"

#import "AbstractProductA.h"
#import "AbstractProductB.h"
#import "AbstractFactory.h"
#import "ConcreteFactory1.h"
#import "ConcreteFactory2.h"

#import "SimpleFactory.h"
#import "SimpleProductProtocol.h"

#import "PartA.h"
#import "PartB.h"
#import "PartC.h"
#import "Builder.h"
#import "Director.h"

#import "AdapterProtocol.h"
#import "Adapter1.h"
#import "Adapter2.h"

#import "Facade.h"

#import "RefinedAbstraction.h"
#import "ConcreteImplementorA.h"
#import "ConcreteImplementorB.h"

#import "ConcreteDecoratorA.h"
#import "ConcreteDecoratorB.h"

#import "FlyweightFactory.h"

#import "Proxy.h"

#import "Receiver.h"
#import "ConcreteCommand.h"
#import "Invoker.h"

#import "ConcreteMediator.h"
#import "ConcreteColleagueA.h"
#import "ConcreteColleagueB.h"

#import "ConcreteSubject.h"
#import "ConcreteObserver.h"

#import "Context.h"

#import "SContext.h"
#import "ConcreteStrategyA.h"
#import "ConcreteStrategyB.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 单例模式
    Singleton *singleton1 = [Singleton sharedInstance];
    Singleton *singleton2 = [Singleton sharedInstance];
    NSLog(@"instacne1:%@  \ninstance2:%@", singleton1, singleton2);
    // 工厂方法模式
    id<ProductProtocol> productA = [ConcreteFactoryA factoryMethod];
    id<ProductProtocol> productB = [ConcreteFactoryB factoryMethod];
    [productA use];
    [productB use];
    // 抽像工厂模式
    id<AbstractProductA> productA1 = [ConcreteFactory1 createProductA];
    id<AbstractProductB> productB1  = [ConcreteFactory1 createProductB];
    id<AbstractProductA> productA2 = [ConcreteFactory2 createProductA];
    id<AbstractProductB> productB2 = [ConcreteFactory2 createProductB];
    [productA1 use];
    [productB1 eat];
    [productA2 use];
    [productB2 eat];
    // 简单工厂模式
    id<SimpleProductProtocol> simpleProductA = [SimpleFactory createProduct:kSimpleProductA];
    id<SimpleProductProtocol> simpleProductB = [SimpleFactory createProduct:kSimpleProductB];
    [simpleProductA use];
    [simpleProductB use];
    // 建造者模式
    Director *director = [[Director alloc] init];
    Builder *builder = [[Builder alloc] init];
    builder.partA = [[PartA alloc] init];
    builder.partB = [[PartB alloc] init];
    builder.partC = [[PartC alloc] init];
    director.pbuilder = builder;
    NSDictionary *dic = [director construct];
    NSLog(@"%@", dic);
    // 适配器模式
    id<AdapterProtocol> adapter1 = [[Adapter1 alloc] init];
    NSLog(@"%@", [adapter1 request]);
    id<AdapterProtocol> adapter2 = [[Adapter2 alloc] init];
    NSLog(@"%@", [adapter2 request]);
    // 外观模式
    Facade *facade = [[Facade alloc] init];
    [facade wrapOperation];
    // 桥接模式
    ConcreteImplementorA *impA = [[ConcreteImplementorA alloc] init];
    ConcreteImplementorB *impB = [[ConcreteImplementorB alloc] init];
    
    RefinedAbstraction *refineAbstraction_A = [[RefinedAbstraction alloc] initWithImplementor:impA];
    RefinedAbstraction *refineAbstraction_B = [[RefinedAbstraction alloc] initWithImplementor:impB];
    [refineAbstraction_A operation];
    [refineAbstraction_B operation];
    // 装饰模式
    ConcreteDecoratorA *decoratorA = [[ConcreteDecoratorA alloc] init];
    [decoratorA operation];
    ConcreteDecoratorB *decoratorB = [[ConcreteDecoratorB alloc] init];
    [decoratorB operation];
    // 享元模式
    FlyweightFactory *flyweightFactory = [[FlyweightFactory alloc] init];
    id<Flyweight> flyweight1 = [flyweightFactory flyWeightWithString:@"one"];
    id<Flyweight> flyweight2 = [flyweightFactory flyWeightWithString:@"two"];
    id<Flyweight> flyweight3 = [flyweightFactory flyWeightWithString:@"one"];
    [flyweight1 operation:@"1"];
    [flyweight2 operation:@"2"];
    [flyweight3 operation:@"3"];
    NSLog(@"flyweight1:%@\nflyweight2:%@\nflyweight3:%@",flyweight1,flyweight2,flyweight3);
    // 代理模式
    Proxy *proxy = [[Proxy alloc] init];
    [proxy request];
    // 命令模式
    Receiver *receiver = [[Receiver alloc] init];
    ConcreteCommand *concreteCommand = [[ConcreteCommand alloc] initWithReceiver:receiver];
    Invoker *invoker = [[Invoker alloc] initWithCommand:concreteCommand];
    [invoker call];
    // 中介模式
    ConcreteColleagueA *colleagueA = [[ConcreteColleagueA alloc] init];
    ConcreteColleagueB *colleagueB = [[ConcreteColleagueB alloc] init];
    ConcreteMediator *mediator = [[ConcreteMediator alloc] init];
    [mediator registerWithColleague:colleagueA dest:@"A"];
    [mediator registerWithColleague:colleagueB dest:@"B"];
    [colleagueA send:@"hello,B" to:@"B"];
    // 观察者模式
    ConcreteSubject *subject = [[ConcreteSubject alloc] init];
    ConcreteObserver *observer = [[ConcreteObserver alloc] init];
    [subject attach:observer];
    subject.number = @(1);
    // 状态模式
    Context *ctx = [[Context alloc] init];
    [ctx request];
    [ctx request];
    [ctx request];
    // 策略模式
    SContext *sctx = [[SContext alloc] init];
    ConcreteStrategyA *strategyA = [[ConcreteStrategyA alloc] init];
    sctx.strategy = strategyA;
    [sctx algorithm];
    
    ConcreteStrategyB *strategyB = [[ConcreteStrategyB alloc] init];
    sctx.strategy = strategyB;
    [sctx algorithm];

}





@end
