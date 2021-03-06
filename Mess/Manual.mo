��    T      �  q   \         -   !  +   O     {     �  E   �  �   �  D   u  C   �  2   �     1	     E	  ?   W	     �	     �	  �   �	  �   ~
  
        #     *  �   D  |   �     W  T   m  '   �  `   �  T   K  *   �  M   �       0   9  $   j     �     �     �     �     �          .     M     j     �     �  !   �     �     �            �   7    �  �   �    �  �   �  6  T  �   �  �    �   �  �   ~  �   
  e   �  R   5  3   �     �    �  
   �  �   �  Z   �  T       f  J   x  S   �  2      �   J   .   �   B    !     C!     K!  
   Z!  6   e!  �   �!  �   ?"  �   #     $     
$  +  $  -   E%  +   s%     �%     �%  E   �%  �   &  D   �&  C   �&  2   "'     U'     i'  ?   {'     �'     �'  x   �'  U   b(     �(     �(  !   �(  w   �(  ]   f)     �)  3   �)  !   *  D   **  c   o*  *   �*  N   �*  @   M+  6   �+  *   �+  '   �+     ,     5,     U,     o,     �,     �,     �,     �,     �,     -  !   )-     K-     d-     |-     �-  :   �-    �-  �   /  �   �/  �   �0  +  51  �   a2  �  �2  �   �4  �   R5  �   �5  Y   �6  `   �6  "   =7     `7  6  e7     �8  �   �8  L   M9  �  �9     �;  [   �;  W   �;  *   ?<  w   j<     �<  B   =     D=     L=     ]=  6   q=  �   �=  �   C>    �>     �?     @            =       2                4   ?   $   *   #          3   <   ,      C   Q          9   	      !             G          J   .                  S   
                 I      +            E   P   L   "                 (              O   >                     6       K   %   /       T   R           8   -   ;   7   )   1      A      0           D   '           M      5   @      F   &                  B   :   H   N          $self->last_login( DateTime->now() );

       return 0 if $pw ne $self->password;

       return 1;
  }

   extends 'Person';

   has 'first_name' => (
      is  => 'rw',
      isa => 'Str',
  );

   has 'last_login' => (
      is      => 'rw',
      isa     => 'DateTime',
      handles => { 'date_of_last_login' => 'date' },
  );

   has 'last_name' => (
      is  => 'rw',
      isa => 'Str',
  );

   has 'password' => (
      is  => 'rw',
      isa => 'Str',
  );

   no Moose;
  __PACKAGE__->meta->make_immutable;

   package Person;

   package User;

   sub login {
      my $self = shift;
      my $pw   = shift;

   use DateTime;
  use Moose;

   use Moose;

 A method modifier lets you say "before calling method X, do this first", or "wrap method X in this code". Method modifiers are particularly handy in roles and with attribute accessors. A role is something a class does (like "Debuggable" or "Printable"). Roles provide a way of adding behavior to classes that is orthogonal to inheritance. AN EXAMPLE AUTHOR Another object system!?!? Attributes are a core part of the Moose OO system. An attribute is a piece of data that an object has. Moose has a lot of attribute-related features! But if you want to dig about in the guts, Moose lets you do that too, by using and extending its powerful introspection API. COPYRIGHT AND LICENSE Delegation is a powerful way to make use of attributes which are themselves objects. Frequently asked questions about Moose. How do you make use of Moose in your classes? Now that I'm a Moose, how do I subclass something? If you're still asking yourself "Why do I need this?", then this section is for you. Interested in hacking on Moose? Read this. Introduces Moose concepts, and contrasts them against "old school" Perl 5 OO. Is Moose just Perl 6 in Perl 5? Is this for real? Or is this just an experiment? Is this ready for use in production? JUSTIFICATION L<Moose::Manual::Attributes> L<Moose::Manual::BestPractices> L<Moose::Manual::Classes> L<Moose::Manual::Concepts> L<Moose::Manual::Construction> L<Moose::Manual::Contributing> L<Moose::Manual::Delegation> L<Moose::Manual::Delta> L<Moose::Manual::FAQ> L<Moose::Manual::MOP> L<Moose::Manual::MethodModifiers> L<Moose::Manual::MooseX> L<Moose::Manual::Roles> L<Moose::Manual::Types> L<Moose::Manual::Unsweetened> Learn how objects are built in Moose, and in particular about the C<BUILD> and C<BUILDARGS> methods. Also covers object destruction with C<DEMOLISH>. Moose aims to do the same thing for Perl 5 OO. We can't actually create new keywords, but we do offer "sugar" that looks a lot like them. More importantly, with Moose, you I<define your class declaratively>, without needing to know about blessed hashrefs, accessor methods, and so on. Moose has a lot of features, and there's definitely more than one way to do it. However, we think that picking a subset of these features and using them consistently makes everyone's life easier. Moose has been used successfully in production environments by many people and companies. There are Moose applications which have been in production with little or no issue now for years. We consider it highly stable and we are committed to keeping it stable. Moose is I<based> on the prototypes and experiments Stevan did for the Perl 6 meta-model. However, Moose is B<NOT> an experiment or prototype; it is for B<real>. Moose is a I<complete> object system for Perl 5. Consider any modern object-oriented language (which Perl 5 definitely isn't). It provides keywords for attribute declaration, object construction, inheritance, and maybe more. These keywords are part of the language, and you don't care how they are implemented. Moose is based in large part on the Perl 6 object system, as well as drawing on the best ideas from CLOS, Smalltalk, and many other languages. Moose is built on top of C<Class::MOP>, a meta-object protocol (aka MOP). Using the MOP, Moose provides complete introspection for all Moose-using classes. This means you can ask classes about their attributes, parents, children, methods, etc., all using a well-defined API. The MOP abstracts away the symbol table, looking at C<@ISA> vars, and all the other crufty Perl tricks we know and love(?). Moose is built on top of L<Class::MOP>, which is a metaclass system for Perl 5. This means that Moose not only makes building normal Perl 5 objects better, but it also provides the power of metaclass programming. Moose is maintained by the Moose Cabal, along with the help of many contributors. See L<Moose/CABAL> and L<Moose/CONTRIBUTORS> for details. Moose makes Perl 5 OO both simpler and more powerful. It encapsulates Perl 5 power tools in high-level declarative APIs which are easy to use. Best of all, you don't need to be a wizard to use it. Moose's meta API system lets you ask classes about their parents, children, methods, attributes, etc. Moose's type system lets you strictly define what values an attribute can contain. Moose::Manual - What is Moose, and how do I use it? NAME No. While Moose is very much inspired by Perl 6, it is not itself Perl 6. Instead, it is an OO system for Perl 5. Stevan built Moose because he was tired of writing the same old boring Perl 5 OO code, and drooling over Perl 6 OO. So instead of switching to Ruby, he wrote Moose :) Nuff Said. Of course, in the end, you need to make this call yourself. If you have any questions or concerns, please feel free to email Stevan or the moose@perl.org list, or just stop by irc.perl.org#moose and ask away. Shows two example classes, each written first with Moose and then with "plain old Perl 5". Stevan read Larry Wall's talk from the 1999 Linux World entitled "Perl, the first postmodern computer language" in which he talks about how he picked the features for Perl because he thought they were cool and he threw out the ones that he thought sucked. This got him thinking about how we have done the same thing in Moose. For Moose, we have "borrowed" features from Perl 6, CLOS (LISP), Smalltalk, Java, BETA, OCaml, Ruby and more, and the bits we didn't like (cause they sucked) we tossed aside. So for this reason (and a few others) Stevan has re-dubbed Moose a I<postmodern> object system. TABLE OF CONTENTS This document describes a few of the most useful Moose extensions on CPAN. This document details backwards-incompatibilities and other major changes to Moose. This is a I<complete and usable> class definition! This is free software; you can redistribute it and/or modify it under the same terms as the Perl 5 programming language system itself. This manual consists of a number of documents. This software is copyright (c) 2011 by Infinity Interactive, Inc.. VERSION WHAT IS MOOSE? WHY MOOSE? Wait, I<post> modern, I thought it was just I<modern>? We'll leave the line-by-line explanation of this code to other documentation, but you can see how Moose reduces common OO idioms to simple declarative constructs. With Moose, you can concentrate on the I<logical> structure of your classes, focusing on "what" rather than "how". A class definition with Moose reads like a list of very concise English sentences. Yes, we know there are many, many ways to build objects in Perl 5, many of them based on inside-out objects and other such things. Moose is different because it is not a new object system for Perl 5, but instead an extension of the existing object system. Yes. version 2.0401 Project-Id-Version: PACKAGE VERSION
POT-Creation-Date: 2011-12-18 14:13+0800
PO-Revision-Date: 2011-12-18 16:32+0800
Last-Translator: xiaomo <wxm4ever@gmail.com>
Language-Team: LANGUAGE <LL@li.org>
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
       $self->last_login( DateTime->now() );

       return 0 if $pw ne $self->password;

       return 1;
  }

   extends 'Person';

   has 'first_name' => (
      is  => 'rw',
      isa => 'Str',
  );

   has 'last_login' => (
      is      => 'rw',
      isa     => 'DateTime',
      handles => { 'date_of_last_login' => 'date' },
  );

   has 'last_name' => (
      is  => 'rw',
      isa => 'Str',
  );

   has 'password' => (
      is  => 'rw',
      isa => 'Str',
  );

   no Moose;
  __PACKAGE__->meta->make_immutable;

   package Person;

   package User;

   sub login {
      my $self = shift;
      my $pw   = shift;

   use DateTime;
  use Moose;

   use Moose;

 介绍方法修饰符，可以让你在执行某个方法前先执行某段特定的代码，或者包装一个方法。 介绍 Moose 中的角色。Moose 的角色是一种正交继承类的行为方式。 一个例子 作者 另一个面向对象的系统？ 介绍 Moose 面向对象系统中的一个核心部分 -----属性，以及 Moose 中与属性相关的一些特性。 如果你想要拓展 Moose 的话，它内置的强大的自省 API 和扩展供你使用。 版权和许可 介绍委托属性以及如何使用委托属性。 Moose 常见的问题与回答。 如何在自己的类中使用 Moose 以及如何继承 Moose 类。 如果你仍然不明白“为什么我要用 Moose？“，那么这个章节是为你准备的。 Interested in hacking on Moose? Read this. 介绍 Moose 的一些概念，并且与旧式的 Perl 5 OO 进行了对比。 Perl 5 中的 Moose 和 Perl 6 的面向对象是一样的吗？ 这是认真的吗，还是只是一个实验用品？ Moose 可以应用在生产环境中吗？ 还是不明白为什么要用 Moose？ L<Moose::Manual::Attributes> L<Moose::Manual::BestPractices> L<Moose::Manual::Classes> L<Moose::Manual::Concepts> L<Moose::Manual::Construction> L<Moose::Manual::Contributing> L<Moose::Manual::Delegation> L<Moose::Manual::Delta> L<Moose::Manual::FAQ> L<Moose::Manual::MOP> L<Moose::Manual::MethodModifiers> L<Moose::Manual::MooseX> L<Moose::Manual::Roles> L<Moose::Manual::Types> L<Moose::Manual::Unsweetened> 介绍如何在 Moose 中构造对象以及销毁对象。 实际上我们不能随意创建新的关键字，但是我们可以提供类似于"语法糖"的方式来使它们用起来更像是关键字。使用 Moose，你便可以自如地进行面向对象的编程，而不需要知道 Perl 中复杂的绑定引用、访问方法等知识。 Moose 有很多特性，并且每个事情不只只有一个实现方式。不过我们认为，选取一些简单的例子以帮助用户更好的学习和使用 Moose。 Moose 已经被很多人、很多公司应用在很多成功的案例中。Moose 在生产环境中很少出现或者根本不出现问题。我们认为 Moose 是高度稳定的而且我们会一直致力于保持它的稳定。 Moose 是B<基于> Stevan 的 Perl 6 meta-model 的实验测试，但是，MooseB<不是>一个实验用品，是可以供正常的生产使用的。 Moose 是 Perl 5 中的一个完整的对象系统。和大多数面向对象的语言相同（ Perl5 不是严格面向对象的)， Moose 提供关键字去声明属性、构造对象、继承等等。这些关键字可能是语言的一部分，不过你不需要关心它们是怎么实现的。 Moose 以 大部分 Perl 6 的面向对象为基础，并且借鉴了 CLOS、Smalltalk等许多面向对象的语言优秀想法。 Moose 是基于 C<Class::MOP> 构建的，MOP 是一种元对象协议。通过 MOP，我们可以通过一种简单明了的方式去访问对象的属性、父类、子类以及方法等。MOP 抽象了符号表，类似 C<@ISA>等符号，MOP 也抽象了我们所擅长的一些 Perl 的技巧。(The MOP abstracts away the symbol table, looking at C<@ISA> vars, and all the other crufty Perl tricks we know and love(?). 这里不会翻译。) Moose 是以 Perl 5 的元类系统 L<Class::Mop>为基础构建的。这表明，Moose 不仅可以更好的实现面向对象，而且更能提供强大的元类编程。 Moose 是由许多志愿者共同努力的结果。具体的请参看 L<Moose/CABAL>和L<Moose/CONTRIBUTORS>。
译者：xiaomo (wxm4ever@gmail.com)。 Moose 使你在 Perl 5 既简单又强大的使用面向对象的技术。它封装了 Perl 5中复杂的高级 API，使得你可以方便的使用。 Moose 的元 API 系统，可以让你访问类的父类、子类、方法和属性等。 Moose 中的类型系统，让你严格的定义各个属性中可以包含什么类型的值。 Moose::Manual - 什么是 Moose？ NAME 不是。虽然 Moose 是收到 Perl 6 的启发，但是它本身并不在 Perl 6 中。相反，它是一个 Perl 5 中的面向对象的系统。Stevan 厌倦了在 Perl 5 中写枯燥复杂的旧式代码以及对 Perl 6 的面向对象非常感兴趣，所以他写了 Moose 而不是转向 Ruby 阵营。   当然，这一切需要你来实现。如果你有任何问题或疑虑，欢迎发送邮件给 Stevan、moose@perl.org 邮件列表，或者到 irc.perl.org#moose 询问。 通过两个例子来对比 Perl 5 旧式 OO 的实现与 Moose 式实现。 Larry Wall 1999年的题为“Perl, the first postmodern computer language“的演讲中说过他认为很酷的东西便把它加到 Perl 中，而没有用的东西就坚决不引入到 Perl 中。 Stevan 认同这个观点，所以 Moose 借来了 Perl 6 的面向对象系统，并且从 CLOS(LISP)，Smalltalk，Java，BETA，OCaml，Ruby等语言中借来了许多很酷的东西，而不是很喜欢的部分却一点都没有引入到 Moose 中。因此，有了现在的 Moose。 目录 这个文档介绍几个很有用的 Moose 拓展。这些拓展可以在 CPAN 上得到。 这个文档详细的介绍了具体的向后不兼容性以及其他重要的变化。 这是一个完整的可用的类定义。 这是自由软件，您可以重新分配或者根据 Perl 5 的编程语言系统本身相同的条款进行修改。 本手册包含如下文档。 This software is copyright (c) 2011 by Infinity Interactive, Inc.. VERSION 什么是 Moose? 为什么用 Moose? Wait, I<post> modern, I thought it was just I<modern>? 我们将在其他文档中看到具体的代码注释。通过上面的代码，我们可以初步领略到 Moose 面向对象编程的简单与强大。 Moose 可以让你把更多的精力集中在结构的逻辑实现上，而不是语言实现上。Moose 式的类定义更像是非常简明的英语句子。 是的，我们知道有非常多非常多的方式在 Perl 5中实现面向对象的技术，它们有着各种各样的实现。Moose 与它们不同的是，Moose 不是 Perl 5 的新的一个面向对象系统，相反的，它拓展了现有的 Perl 5 面向对象系统。 是的，完全没有问题。 version 2.0401 