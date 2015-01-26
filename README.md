### 对JSONModel和MJExtension进行性能测试
---
#### 测试环境
* 一个数组里面装着100个字典，将这个字典数组转为模型数组
* 连续转换100次

#### 测试结果
* JSONModel耗时<span style="color:red;">2.111259</span>秒  
![Mou icon](http://ww2.sinaimg.cn/mw1024/800cdf9cgw1eon4umfixxj215a0lcdqo.jpg)
* MJExtension耗时<span style="color:red;">0.100171</span>秒  
![Mou icon](http://ww4.sinaimg.cn/mw1024/800cdf9cgw1eon4uome5rj21a00mu12j.jpg)
