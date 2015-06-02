# CocoaUIDemo

Build Native iOS Apps with HTML+CSS

For Web developers to build native iOS apps, using the familiar web development languages, such as HTML, CSS.

__Demo:__

```
[superview.style set:@"padding: 10;"];
```

Wrapping native UIViews:

```
UISwitch *s1 = [[UISwitch alloc] init];
UISwitch *s2 = [[UISwitch alloc] init];
IView *view = [[IView alloc] init];
[view.style set:@"padding: 4; border: 1 solid #000; border-radius: 5;"];
[view addSubview:s1 style:@"float: left; margin: 3;"];
[view addSubview:s2 style:@"float: right; margin: 3;"];
```

