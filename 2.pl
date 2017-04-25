#!/usr/bin/perl

use XML::DOM;
#use XML::Twig;

# 创建XML的最外层元素
my $xml = "<MyXML/>";

# 通过XML::DOM::Parser解析外层元素，创建基础XML文档
# XML::DOM::Parser::parse函数的返回值为 XML::DOM::Document 类
my $parser = new XML::DOM::Parser;
my $dom = $parser->parse($xml);

# 生成Book节点
# createElement的返回值为 XML::DOM::Element 类
# XML::DOM::Element 的父类是 XML::DOM::Node 类
my $book = $dom->createElement("Book");
# 设置节点属性
$book->setAttribute("title", "My First Book");
$book->setAttribute("author", "charlee");

# 生成Chapter节点
my $chapter = $dom->createElement("Chapter");
$chapter->setAttribute("id", "1");
# 生成一个文本节点
my $title = $dom->createTextNode("My First Chapter");
$chapter->appendChild($title);

# 添加Chapter到Book
$book->appendChild($chapter);

# 添加Book到XML文档
$dom->getDocumentElement->appendChild($book);

# 利用XML::Twig整理格式
#my $twig = new XML::Twig;
#$twig->set_indent(" "x4);
#$twig->parse($dom->toString);
#$twig->set_pretty_print("indented");

# 输出
#print $twig->sprint;

print $dom->toString
