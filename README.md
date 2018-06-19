# Hackintosh_E450C 

E450C 黑苹果目前已经完成一下功能：

* IGPU Hotpatch驱动完成。

* HDAU 注入cheng gong

* 亮度调整完成

* 注入Retina显示器

* LPC注入

* 休眠正常唤醒迅速

未完成：

* 电池管理未完成

* 内置声卡驱动未完成

Clover 文件夹内包含

* Kext
    * FakePCIID.kext  #配合IGPU 驱动HD4400

    * FakePCIID_Intel_HD_Graphics.kext #配合IGPU 驱动HD4400

    * IntelMausiEthernet.kext 驱动内置Intel I218V 有线网卡

    * USB_Series8_Injector.kext #针对E450C机型的端口制作的USB补丁，解决其他驱动USB报错和不识别的故障。

* Config.plist
    * 自行增加三码，个人使用三码已经剔除。

    * 去除ig-platform-id 改用Hotpatch驱动

    * Config搭配Hotpatch即可引导