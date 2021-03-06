��    �      $  �   ,      �
  !   �
  �     .   �  2   �  K   �  [   3  T   �  E   �  E   *     p     }     �     �     �     �     �     
  *     C   J     �     �     �     �     �     �     �     �     �            0    Y   L     �  6   �  .   �  8   #  d   \  �   �  *   Q  �   |  '     h   4  N   �  �   �  �   �  M   �  �   �  )   �  -   �  /   �  &   
  /   1  #  a     �  �   �  �   q  �   >  �   (  �   �  r   B  ]   �  d     �   x  	       #  `   C     �  0  �  V   �   8   H!     �!     �!  2   �!     �!  v   �!  
   S"  
   ^"  �   i"  `   #  F   u#  �   �#  R   �$  �   �$    �%  �   �&  
   P'  %   ['  �   �'     X(     _(  �   p(  �   )  �   *  3  �*  �   �+     e,  +   �,     �,     �,  �  �,  i   D.    �.     �/  B   �/  9  0  <   ?1  �   |1  �   ;2  >   �2  |   3  �   ~3  �   '4  B   �4     �4  �   �4     �5  
   �5  �   �5  G   c6  ^   �6  �   
7  %   �7  i   �7  )   )8  [   S8  ?   �8  g   �8     W9  +  f9  !   �:  �   �:  .   6;  2   e;  K   �;  [   �;  T   @<  E   �<  E   �<     !=     .=     K=     b=     {=     �=     �=     �=  *   �=  C   �=     ?>     L>     T>     b>     o>     |>     �>     �>     �>     �>     �>  +  �>  0   �?  ?   )@  R   i@  ?   �@  9   �@  Z   6A  �   �A  3   B  �   PB  3   �B  N   C  T   gC  �   �C  �   FD  Q   E  u   lE  6   �E  P   F  ?   jF  6   �F  R   �F  �   4G     �G  �   �G  �   �H  �   %I  l   J  w   �J  i   �J  H   cK  D   �K  n   �K  	   `L    jL  `   M     �M  �   �M  q   �N  [   =O     �O     �O  +   �O     �O  �   �O  
   �P  
   �P  h   �P     Q  Y   �Q  �   �Q  Q   �R  �   �R  �   �S  �   �T      U  *   3U  �   ^U     
V     V  `   "V  �   �V  `   >W  �   �W  �   =X     �X  A   �X     Y     #Y  �   3Y  V   �Y    (Z     0[  E   5[  u   {[  U   �[  �   G\  W   �\  *   H]  p   s]  �   �]  w   �^  B   �^     B_  ]   G_     �_     �_  �   �_  I   r`  2   �`  u   �`  1   ea  s   �a  5   b  O   Ab  :   �b  l   �b     9c     z   U   !       <          8   H       	      x   r   {   |   
   B   *       [           �       G   )       W   o   \             /   ?             y   S               .                  9      "   d      h   Q       k   j               ~   t   +      _       i   �   O       1   u       (      a   }   K   5       P      Y   D   '   T   N   ]          7   E       3      >       b   w          A       L   #       q             6                   g   J   C   0          :   c   $                  v   Z      R   ^   M   -   s   ;               X      ,   @   m   =       I   V   4   e       &      2   p   `      n           f      %   F   l                     $self->is_broken(1);
  };

       if ( $attribute->has_type_constraint ) {
          print "  type: ", $attribute->type_constraint->name, "\n";
      }
  }

       warn "Called login() with $pw\n";
  };

   after 'break' => sub {
      my $self = shift;

   before 'login' => sub {
      my $self = shift;
      my $pw   = shift;

   for my $attribute ( $meta->get_all_attributes ) {
      print $attribute->name(), "\n";

   for my $method ( $meta->get_all_methods ) {
      print $method->name, "\n";
  }

   has 'first_name' => (
      is  => 'rw',
      isa => 'Str',
  );

   has 'is_broken' => (
      is  => 'rw',
      isa => 'Bool',
  );

   has ...;

   my $meta = User->meta();

   package Breakable;

   package MyWay::User;

   package Person;

   requires 'break';

   sub login { ... }

   use Moose::Role;

   use Moose;
  # now it's a Moose class!

   use Moose;
  use MooseX::StrictConstructor
  use MooseX::MyWay;

 * Attributes * Class * Constructor * Delegation * Destructor * Immutabilization * Method * Method Modifiers * Object Instance * Roles * Type A B<method modifier> is a hook that is called when a named method is called. For example, you could say "before calling C<login()>, call this modifier first". Modifiers come in different flavors like "before", "after", "around", and "augment", and you can apply more than one modifier to a single method. A B<method> is very straightforward. Any subroutine you define in your class is a method. A C<DESTROY()> method. A C<new()> method which calls C<bless> on a reference. A blessed reference, usually a hash reference. A class I<does> (and I<consumes>) zero or more B<roles>. A class I<has> a B<constructor> and a B<destructor>. These are provided for you "for free" by Moose. A class I<has> a B<metaclass>, which in turn has B<meta-attributes>, B<meta-methods>, and B<meta-roles>. This metaclass I<describes> the class. A class I<has> zero or more B<attributes>. A class I<has> zero or more B<method modifiers>. These modifiers can apply to its own methods or methods that are inherited from its ancestors. A class I<has> zero or more B<methods>. A class I<has> zero or more superclasses (aka parent classes). A class inherits from its superclass(es). A class is usually analogous to a category of nouns, like "People" or "Users". A constructor creates an B<object instance> for the class. In old school Perl, this was usually done by defining a method called C<new()> which in turn called C<bless> on a reference. A metaclass is a class that describes classes. With Moose, every class you define gets a C<meta()> method. The C<meta()> method returns a L<Moose::Meta::Class> object, which has an introspection API that can tell you about the class it represents. A package with no introspection other than mucking about in the symbol table. A required method is not implemented by the role. Required methods are a way for the role to declare "to use this role you must implement this method". A role I<has> zero or more B<attributes>. A role I<has> zero or more B<excluded roles>. A role I<has> zero or more B<method modifiers>. A role I<has> zero or more B<methods>. A role I<has> zero or more B<required methods>. A role is something that a class I<does>. We also say that classes I<consume> roles. For example, a Machine class might do the Breakable role, and so could a Bone class. A role is used to define some concept that cuts across multiple unrelated classes, like "breakability", or "has a color". AUTHOR After that we recommend that you start with the L<Moose::Cookbook>. If you work your way through all the recipes under the basics section, you should have a pretty good sense of how Moose works, and all of its basic OO features. After that, check out the Role recipes. If you're really curious, go on and read the Meta and Extending recipes, but those are mostly there for people who want to be Moose wizards and extend Moose itself. Almost every concept we defined earlier has a meta class, so we have L<Moose::Meta::Class>, L<Moose::Meta::Attribute>, L<Moose::Meta::Method>, L<Moose::Meta::Role>, L<Moose::Meta::TypeConstraint>, L<Moose::Meta::Instance>, and so on. An attribute is a property of the class that defines it. It I<always> has a name, and it I<may have> a number of other properties. An attribute is something that the class's members have. For example, People have first and last names. Users have passwords and last login datetimes. An attribute may also define B<delegations>, which will create additional methods based on the delegation mapping. An excluded role is a role that the role doing the excluding says it cannot be combined with. An instance has values for its attributes. For example, a specific person has a first and last name. An object instance is a specific noun in the class's "category". For example, one specific Person or User. An instance is created by the class's B<constructor>. Attribute Attributes I<are not> methods, but defining them causes various accessor methods to be created. At a minimum, a normal attribute will have a reader accessor method. Many attributes have other methods, such as a writer method, a clearer method, or a predicate method ("has it been set?"). B<Methods> correspond to verbs, and are what your objects can do. For example, a User can login. BUT I NEED TO DO IT MY WAY! By default, Moose stores attributes in the object instance, which is a hashref, I<but this is invisible to the author of a Moose-based class>! It is best to think of Moose attributes as "properties" of the I<opaque> B<object instance>. These properties are accessed through well-defined accessor methods. C<Class::Delegation> or C<Class::Delegator>, but probably even more hand-written code. C<Class::Trait> or C<Class::Role>, or maybe C<mixin.pm>. COPYRIGHT AND LICENSE Class Comes for free when you define a class with Moose. Constructor Could only be done through serious symbol table wizardry, and you probably never saw this before (at least in Perl 5). Delegation Destructor Finally, you can define your own types with their own constraints. For example, you could define a C<PosInt> type, a subtype of C<Int> which only allows positive numbers. Hand-written accessor methods, symbol table hackery, or a helper module like C<Class::Accessor>. Hand-written parameter checking in your C<new()> method and accessors. If you want to see how Moose would translate directly into old school Perl 5 OO code, check out L<Moose::Manual::Unsweetened>. This might be helpful for quickly wrapping your brain around some aspects of "the Moose way". In addition, every class name in your application can also be used as a type name. In old school Perl 5, this is often a blessed hash reference. With Moose, you should never need to know what your object instance actually is. (Okay, it's usually a blessed hashref with Moose, too.) In the past, you may not have thought too much about the difference between packages and classes, attributes and methods, constructors and methods, etc. With Moose, these are all conceptually separate, though under the hood they're implemented with plain old Perl. Knowing what these concepts mean in Moose-speak, and how they used to be done in old school Perl 5 OO is a good way to start learning to use Moose. META WHAT? MOOSE CONCEPTS (VS "OLD SCHOOL" Perl) Many of these extensions require surprisingly small amounts of code, and once you've done it once, you'll never have to hand-code "your way of doing things" again. Instead you'll just load your favorite extensions. Method Method modifiers Method modifiers are often used as an alternative to overriding a method in a parent class. They are also used in roles as a way of modifying methods in the consuming class. Moose also comes with a (miniature) type system. This allows you to define types for attributes. Moose has a set of built-in types based on the types Perl provides in its core, such as C<Str>, C<Num>, C<Bool>, C<HashRef>, etc. Moose attributes provide declarative syntax for defining delegations. A delegation is a method which in turn calls some method on an attribute to do its real work. Moose comes with a feature called "immutabilization". When you make your class immutable, it means you're done adding methods, attributes, roles, etc. This lets Moose optimize your class with a bunch of extremely dirty in-place code generation tricks that speed up things like object construction and so on. Moose is maintained by the Moose Cabal, along with the help of many contributors. See L<Moose/CABAL> and L<Moose/CONTRIBUTORS> for details. Moose vs old school summary Moose::Manual::Concepts - Moose OO concepts NAME Object instance One of the great things about Moose is that if you dig down and find that it does something the "wrong way", you can change it by extending a metaclass. For example, you can have arrayref based objects, you can make your constructors strict (no unknown parameters allowed!), you can define a naming scheme for attribute accessors, you can make a class a Singleton, and much, much more. Or you can skip that and jump straight to L<Moose::Manual::Classes> and the rest of the L<Moose::Manual>. Our meta-object protocol (aka MOP) provides well-defined introspection features for each of those concepts, and Moose in turn provides distinct sugar for each of them. Moose also introduces additional concepts such as roles, method modifiers, and declarative delegation. Role Role are somewhat like mixins or interfaces in other OO languages. Roles are I<composed> into classes (or other roles). When a role is composed into a class, its attributes and methods are "flattened" into the class. Roles I<do not> show up in the inheritance hierarchy. When a role is composed, its attributes and methods appear as if they were defined I<in the consuming class>. So you're sold on Moose. Time to learn how to really use it. Sometimes you want to do something whenever an object is created. In those cases, you can provide a C<BUILD()> method in your class. Moose will call this for you after creating a new object. The B<constructor> accepts named parameters corresponding to the class's attributes and uses them to initialize an B<object instance>. These are pretty much the same in Moose as in old school Perl. These properties can include a read/write flag, a B<type>, accessor method names, B<delegations>, a default value, and more. This is a special method called when an object instance goes out of scope. You can specialize what your class does in this method if you need to, but you usually don't. This is free software; you can redistribute it and/or modify it under the same terms as the Perl 5 programming language system itself. This software is copyright (c) 2011 by Infinity Interactive, Inc.. Type Under the hood, a method modifier is just a plain old Perl subroutine that gets called before or after (or around, etc.) some named method. VERSION WHAT NEXT? When you say "use Moose" in a package, you are making your package a class. At its simplest, a class will consist simply of attributes and/or methods. It can also include roles, method modifiers, and more. With Moose, these are declaratively defined, and distinct from methods. With Moose, they're part of the core feature set, and are introspectable like everything else. With Moose, this C<new()> method is created for you, and it simply does the right thing. You should never need to define your own constructor! With Moose, this is also declarative. With Moose, this is an opaque thing which has a bunch of attributes and methods, as defined by its class. With Moose, this is called C<DEMOLISH()>. With Moose, you define types declaratively, and then use them by name with your attributes. With Moose, you get well-defined declaration and introspection. With old school Perl 5, this is the C<DESTROY()> method, but with Moose it is the C<DEMOLISH()> method. version 2.0401 Project-Id-Version: PACKAGE VERSION
POT-Creation-Date: 2011-12-21 08:38+0800
PO-Revision-Date: 2011-12-21 13:10+0800
Last-Translator: xiaomo <wxm4ever@gmail.com>
Language-Team: LANGUAGE <LL@li.org>
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
       $self->is_broken(1);
  };

       if ( $attribute->has_type_constraint ) {
          print "  type: ", $attribute->type_constraint->name, "\n";
      }
  }

       warn "Called login() with $pw\n";
  };

   after 'break' => sub {
      my $self = shift;

   before 'login' => sub {
      my $self = shift;
      my $pw   = shift;

   for my $attribute ( $meta->get_all_attributes ) {
      print $attribute->name(), "\n";

   for my $method ( $meta->get_all_methods ) {
      print $method->name, "\n";
  }

   has 'first_name' => (
      is  => 'rw',
      isa => 'Str',
  );

   has 'is_broken' => (
      is  => 'rw',
      isa => 'Bool',
  );

   has ...;

   my $meta = User->meta();

   package Breakable;

   package MyWay::User;

   package Person;

   requires 'break';

   sub login { ... }

   use Moose::Role;

   use Moose;
  # now it's a Moose class!

   use Moose;
  use MooseX::StrictConstructor
  use MooseX::MyWay;

 * Attributes * Class * Constructor * Delegation * Destructor * Immutabilization * Method * Method Modifiers * Object Instance * Roles * Type B<方法修饰符>是在一个特定的函数被执行时的一个钩子。比如，你可以这样定义一个方法修饰符，"在执行C<login()>前，先执行这段代码"。常用的修饰符有"before"，"after"，"around"，"augment"。你可以对一个方法绑定多个方法修饰符。 在类中定义的子函数就是类的方法。 旧式 Perl OO 中，通过定义C<DESTORY()>方法来实现。 旧式 Perl OO 中，通过调用负责C<bless>引用的C<new()>方法来实现。 旧式 Perl OO 中，实例是一个已绑定的哈希引用。 一个类I<能>充当零个或零个以上的B<角色>。 一个类I<有>一个B<构造函数>和一个B<析构函数>。Moose 为你默认提供。 一个类I<有>一个B<元类>，同时也就有B<元类属性>，B<元类方法>，B<元类角色>。这个元类I<描述>着这个类。 一个类I<有>零个或零个以上的B<属性>。 一个类I<有>零个或零个以上的B<方法修饰符>。这些修饰符可以作用于自己的方法或者是从父类继承过来的方法。 一个类I<有>零个或零个以上的B<方法>。 一个类I<有>零个或零个以上的父类。它继承它所有的父类。 一个类通常是一个类别的或相似类别的名字，如"People"、"Users"。 构造函数为类构建B<实例>。在旧式的 Perl 语言中，这通常通过调用 C<new()> 来返回一个 C<bless> 后的引用。 元类是用来描述类的类。在 Moose 中，每一个你定义的类都有一个C<meta()>方法。C<meta()>方法返回L<Moose::Meta::Class>实例，其中有一个自省API可以告诉你它代表的类。 旧式 Perl OO 中，类是一个没有自省机制以及各种符号表的包。 所需方法不是在角色中详细定义的。所需方法是所要充当该角色的类所必须重载的方法。 一个角色I<有>零个或零个以上的B<属性>。 一个角色I<有>零个或零个以上的B<排除角色>（excluded roles）。 一个角色I<有>零个或零个以上的B<方法修饰符>。 一个角色I<有>零个或零个以上的B<方法>。 一个角色I<有>零个或零个以上的B<所需方法>（required methods）。 角色是用来定义类所扮演的角色。比如，Machine 类和 Bone 类都具有不易碎等特性。所以，角色就是用来定义一些跨多个不相关的类的共同特性的。 作者 在那之后，我们推荐你继续看L<Moose::Cookbook>。这样之后，相信你会很熟悉 Moose 的工作原理以及一些相关面向对象的特性。 在那之后，如果你仍然感兴趣的话，继续看 the Meta and Extending 介绍，这对扩展 Moose 的人来说很有帮助。 基本上每个我们之前所提到的概念都有元类，所以有L<Moose::Meta::Class>，L<Moose::Meta::Attribute>，L<Moose::Meta::Method>，L<Moose::Meta::Role>，L<Moose::Meta::TypeConstraint>，L<Moose::Meta::Instance>，等等。 属性是来定义它的类的属性。它I<总有>一个名称，它I<可能>还具有一些其他属性。 属性是类的成员。比如，People 有 first name 和 last name， User 有 password 和上次登录的datetime。 属性也可以定义B<委托属性>，这会根据委托属性的映射关系来产生额外的方法。 排除角色是表明充当该角色的类不能同时充当的角色。 实例有类的属性。如，person 有 first name 和 last name。 对象的实例由B<构造函数>创建。如，Person 或者 User，由它们的B<constructor>来构建的。 Attribute 属性不是方法。而是要创建各种存取方法的原因。至少，一个正常的属性将有一个读者的访问方法。许多属性有其他方法，如一个写者的方法，一个清空方法，一个测试方法（如这个属性被设置了吗？）等等。 方法对应的行为，就是你的对象要做的事情。比如，一个 User 可以登录。 BUT I NEED TO DO IT MY WAY! 默认情况下，Moose 在类的实例中以哈希表的方式存储属性，但是这个过程对程序员是I<不可见>的。最好通过明确定义的存取方法来访问这些"不透明"的属性。 旧式 Perl OO 中，通过C<Class:Delegation>或C<Class::Delegator>，不过实现起来会比想象中还难。 旧式 Perl OO 中，通过C<Class::Trait>、C<Class::Role>、或者C<mixin.pm>来实现？ 版权和许可 Class 在 Moose 中，已经默认为你实现。 Constructor 旧式 Perl OO 中，可能能通过高深的符号表来实现，而且你可能从来都没见过类似的实现（至少在 Perl 5 以前没有见过）。 Delegation Destructor 当然，你也可以定义有自己的约束的类型。如，你可以定义正数 C<PosInt> 类型。 旧式 Perl OO 中，需要手写存取方法，定义一堆符号表，或者使用一些辅助模块如 C<Class::Accessor>。 旧式 Perl OO 中，通过在C<new()>或者相应的访问函数中手动检查类型。 如果你想要知道 Moose 是如何把你的代码用旧式 Perl 5 OO 来实现的，你可以查看L<Moose::Manual::Unsweetened>。这会帮助你快速的了解"the Moose way"的。 此外，在你应用程序中的每一个类的名称也可以是一种类型。 在旧式的 Perl 5 中，这通常通过被绑定的哈希引用来表示。在 Moose 中，你不需要知道实例的结构具体是什么样子（虽然也是通过哈希引用来实现的）。 以前你可能没有仔细的研究过 package 和 class 、 attributes 和 methods、 constructors 和 methods 等的区别。在 Moose 中，这些都是有各自的概念的，尽管它们都是基于普通的 Perl 实现的。 知道如何用 Moose 来表示这些概念，并且和旧式的 Perl 实现进行对比，这是一个比较推荐的学习方式。 什么是元类？ Moose 与 Perl 旧式面向对象的比较 许多这样的代码很短但是很令人惊讶，而且一旦你做过一次，你将永远不需要重复去做了，只需要简单的加载你的拓展就可以了。 Method Method modifiers 方法修饰符经常用来重载父类中的方法。方法修饰符经常出现在角色中。 Moose 有一个（微型）的类型系统。这允许你为属性定义类型。Moose 根据 Perl 的变量类型有内置类型，如 C<Str>，C<Num>，C<Bool>，C<HashRef>，等等。 Moose 可以定义委托属性。委托属性会根据相应的映射来调用正确的方法。 Moose 所谓的"immutabilization"的功能，指让你的类不可改变，之后由 Moose 来为你生成一些复杂难辨别的代码，以加快速度。 Moose 是由许多志愿者共同努力的结果。具体的请参看 L<Moose/CABAL>和L<Moose/CONTRIBUTORS>。<BR/>""译者:xiaomo(wxm4ever@gmail.com) 总结 Moose::Manual::Concepts - Moose 关于面向对象的一些概念 NAME Object instance Moose 最伟大的事情就是当你挖掘 Moose 的本质时，发现有些事情不是按你所想的进行，那么你可以通过扩展元类来修改。 你也可以直接跳到L<Moose::Manual::Classes>来查看剩余的L<Moose::Manual>。 元对象协议(MOP)为面向对象中常用的概念提供了良好的自省功能，而 Moose 则提供语法糖。Moose 也引进了一些新的概念，比如角色（roles）,方法修饰符（method modifiers）和委托属性（declarative delegation）。 Role 角色就好像其他面向对象的语言中的接口这一概念。 当一个类充当一个角色时，角色的属性和方法成为类的属性和方法。（这里不好翻译）。 已经把 Moose 介绍给你了，接下来就该花时间来学习如何使用了。 有些时候你想在实例初始化的时候做一些事情，你可以通过定义 C<BUILD()> 方法来实现，Moose 会在构建实例的时候自动为你调用。 B<构造函数>接受相应的命名参数并用它们来初始化B<对象的实例>。 这个与旧式的 Perl OO 大致相同。 这些属性可以包含读/写标志，B<类型>信息，访问器方法，B<委托方法>，默认值等等。 当你的对象实例超出范围的时候，这个方法将会自动执行。你可以指定这个方法在结束时做什么，不过这通常是不必要的。 这是自由软件，您可以重新分配或者根据 Perl 5 的编程语言系统本身相同的条款进行修改。 This software is copyright (c) 2011 by Infinity Interactive, Inc.. Type 本质上，方法修饰符就是普通的 Perl 程序在命名方法之前或之后调用。 VERSION 接下来做什么？ 当你在 package 里使用 "use Moose"，这表明你在定义一个类。一个简单的类包括属性和方法。当然它也可以包含角色、方法修饰符等等。 在 Moose 中，这些都是声明好的定义，并且与方法不同。 在 Moose 中，它是 Moose 核心功能之一。 在 Moose 中，C<new()>已经为你做好了所有的事情。你从来不需要自己定义相应的构造函数。 在 Moose 中，通过简单的声明就可以。 在 Moose 中，这是一个有着一堆属性和方法的不透明的东西，不过你可以很方便的使用。 在 Moose 中，通过定义C<DEMOLISH()>来实现。 在 Moose 中，你声明变量类型，然后通过变量名来使用它们。 在 Moose 中，有良好的自省机制和定义格式。 在旧式的 Perl 中，这个是 C<DESTORY()> 方法，但在 Moose 中，这个是 C<DEMOLISH()> 方法。 version 2.0401 