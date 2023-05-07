# FamilyGuard & OpenHarmony



<div align="center">
    <img src=".github/media/fg_oh1_logo.png" width="">
</div>



# 0. 更新说明



由于有部分开发用户反馈代码部署开发有一定难度，以及部分文件失效。所以此次更新一个分支，本仓库内容为最新适配鸿蒙开发环境代码，鸿蒙开发环境版本为`xxxxxx`。除此之外，本文还将提供详细的部署流程和操作视频，旨在快速开发AI智能应用在端侧平台，助力对**HI3516DV300**芯片智能开发。同时为了帮助用户理解海思芯片智能应用的开发流程，本仓库将部署的流程分为几部分基础知识进行讲解，先进行必要知识的讲解和实践，最后才是本项目的部署流程。如果用户对这类部署不是很熟悉，请务必按照本人推荐的步骤进行学习。因为作者本身并不是专业嵌入式相关开发人员，所以可能某些方面的经验会对你的开发起到一定的帮助，如果你觉得本仓库有用，记得\star一下，这样会对我有一定的鼓励，如果有任何疑问，也随时欢迎call我（不过不一定能够及时回复你，望见谅！）





## 目录

1. [结果测试](#结果测试)

2. [文件说明](#文件说明)

3. [特性说明](#特性说明)

4. [部署流程](#部署流程)

5. [问题反馈](#问题反馈)

6. [隐私权限](#隐私权限)

7. [更新说明](#更新说明)

   



# 1. 相关部署流程说明



本小节将以YOLO v3模型的推理、量化、部署步骤为例进行说明，同时本仓库还同时提供YOLO v4、YOLO v5、YOLO v7的相关推理驱动，用户可自行查看相关目录进行部署推理。



## 1. 边缘AI推理流程





## 2. AI模型训练步骤





## 3. AI模型量化步骤





## 4. AI模型推理驱动





## 5. AI模型板端推理





















# 2. FamilyGuard项目复现






|  **Build Type**  | `Linux` | `MacOS` | `Windows` |
| :--------------: | :-----: | :-----: | :-------: |
| **Build Status** | passed  | unknown |  passed   |



## 2.1 项目简介

本项目为2020年`全国大学生嵌入式`竞赛全国一等奖&最佳创意奖获得者，主要是利用海思边缘智能推理设备进行的开发，项目内容具体如下：

​	[**FamilyGuard**](http:www.xidianfamilyguard.com)是一个部署在嵌入式平台的智能家庭系统，可以帮助我们快速的了解家庭状况，并针对一些异常行为做出及时的应对，避免一些意外事件的发生。所有模型均在边缘设备进行本地推理，因此在数据隐私安全上面可以起到很好的保护。该产品的核心功能是[检测人群行为](#结果测试)，所以不仅可应用于监测家庭，还可以用 在其他需要对人群行为进行检测的地方。比如统计教室里学生的专注力，监测社 区街道和养老院房间走廊等地方的异常行为。







## 2.2 算法流程











## 2.3 模型测试

### 2.3.1 人体和头部检测识别

<p align="center">
    <img src="./.github/media/two_person_short_gif.gif" width=250 height=200>
    <img src="./.github/media/four_person_short_gif.gif" width=250 height=200>
    <img src="./.github/media/multi_person_short_gif.gif" width=250 height=200>
    <br>
    <sup>Two-person(left) Four-person(center) Multi-person(right) <a href="http://www.xidianfamilyguard.com" target="_blank">Author:bingxie</a></sup>
</p>




### 2.3.2 人体关键点识别

<p align="center">
    <img src=".github/media/kun_gif.gif" width=550 height=300>
    <img src="./.github/media/singal_person_short_gif.gif" width=550 height=300>
    <br>
    <sup>Tesing Mixpose Singal-person <a href="http://www.xidianfamilyguard.com" target="_blank">Author:bingxie</a></sup>
</p>


## 2.4 模型部署









## 2.5 小程序开发

本小节所提供的小程序包含两个版本：`云服务器端`和`本地蓝牙连接`，用户可自行选择进行使用。由于小程序开发类似美工制作＋事件绑定，所以此处以一个IOT端的设备上下互联为例进行说明，同时也会将本人项目当中所开发的小程序进行开源处理，用户可根据提供的教程和自身需求进行相关更改。



### 2.5.1 腾讯云开发版本





### 2.5.2 蓝牙开发版本









## 2.6 网页开发

网页端程序逻辑与小程序端逻辑大致相同，采用html+js+php进行开发，因此此处不过多进行讲解。直接给出源码进行学习。









## 2.7 相关资料

### 1.视频分享

作品功能演示：[【竞赛作品分享】第四届嵌入式竞赛作品FamilyGuard](https://www.bilibili.com/video/BV1Vr4y1v76q/)

```tcl
https://www.bilibili.com/video/BV1Vr4y1v76q/

```

开发经验交流：[【开发经验交流】第四届嵌入式竞赛作品FamilyGuard](https://www.bilibili.com/video/BV1ZL411P7RD/)

```tcl
https://www.bilibili.com/video/BV1ZL411P7RD/

```

作品经验分享：[【作品技术分享】第四届嵌入式竞赛作品FamilyGuard](https://www.bilibili.com/video/BV1sT4y1S7AF/)

```tcl
https://www.bilibili.com/video/BV1sT4y1S7AF/

```

 **PS.如果觉得视频还不错的话，记得投两颗硬币**





### 2.文档资料：

 * Anaconda配置Caffe 链接：

 ```tcl
  链接： https://pan.baidu.com/s/1jQO90zYy3LeicOedLMPg4Q?pwd=8f5d 
  提取码：8f5d 
 ```

* Caffe学习参考资料：

```tcl
链接：https://pan.baidu.com/s/1oVog_gBzbeCwOs89DbJmLw?pwd=v0qk 
提取码：v0qk 
```



* 开发经验交流PPT分享：

```tcl
链接：https://pan.baidu.com/s/130ILd-jAQjgP2DL1Rzm6wQ?pwd=8n9n 
提取码：8n9n 
```

* 技术报告下载：

```tcl
链接：https://pan.baidu.com/s/1qbGjHlbazWBMmorXJb1gig?pwd=hbcr 
提取码：hbcr 
```









# 3. 问题反馈

* 邮箱：binxie@stu.xidian.edu.cn

