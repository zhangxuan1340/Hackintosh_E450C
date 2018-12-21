# Hackintosh_E450C 

E450C 黑苹果目前已经完成一下功能：

* IGPU Hotpatch驱动完成。

* HDAU 注入ID 27 完美进行切换，一切正常

* 亮度调整完成，FN+K降低亮度，FN+P提高亮度

* 注入Retina显示器

* LPC注入

* 更新至macOS 10.14.2 后睡眠唤醒出现问题，唤醒后死机，正在排查原因，待后续更新。

未完成：

* 睡眠唤醒故障

Clover 文件夹内包含


* Config.plist
    * 自行增加三码，个人使用三码已经剔除。

    * 去除ig-platform-id 改用Hotpatch驱动

    * Config搭配Hotpatch即可引导

目前除去睡眠唤醒问题，基本亦可以正常使用。