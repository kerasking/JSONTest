### 对JSONModel和MJExtension进行性能测试
---
#### 测试环境
* 一个数组里面装着100个字典，将这个字典数组转为模型数组
* 连续转换100次

#### 测试结果
* JSONModel耗时2.111259秒
* MJExtension耗时0.100171秒
```
JSONModel和MJExtension有20倍的性能差距
```
