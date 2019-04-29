# Hackintosh_E450C 

``` bash
git clone https://github.com/zhangxuan1340/Hackintosh_E450C.git -b macOS14 --depth=1
```
克隆版本分支macOS14版本。
E450C 黑苹果目前已经完成一下功能：

* IGPU Hotpatch驱动完成。

* HDAU 注入ID 27 完美进行切换，一切正常

* 亮度调整完成，FN+K降低亮度，FN+P提高亮度

* 注入Retina显示器

* LPC注入

* 更新至macOS 10.14.2 修复花屏睡眠无法唤醒问题。
未完成：

* HDMi外接屏幕

Clover 文件夹内包含


* Config.plist
    * 自行增加三码，个人使用三码已经剔除。

    * 去除ig-platform-id 改用Hotpatch驱动

    * Config搭配Hotpatch即可引导
