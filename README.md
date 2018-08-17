# T7Scn

A Chinese Tokyo 7th sisters wiki(or will be). 

[Demo](https://t7scn.herokuapp.com/)

## TODO

1. [x] 历史功能
    - [x] 将最新版本的文章history id存在Article表中，这样可以加快速度，节省后台计算成本
    - [x] 创建历史记录页面
    - [x] 添加每个历史的更新日志comment
1. [ ] 添加测试
1. [ ] 文章中右上角提供一个上传介绍图片的地方
1. [ ] 文章页介绍图片左侧位置添加目录，自动根据标题的层级生成
1. [ ] 用户系统，使用devise <- now!
    - [ ] 添加用户名字段
    - [ ] 文章编辑者添加
    - [ ] 制作用户页面(Controller)
    - [ ] 把devise的error改成bootstrap样式
1. [ ] 调整table th td的样式
1. [ ] 调整sidebar的样式
1. [ ] 制作一个编辑者通用的List，能够查看当前需要修改，需要丰富内容的全部文章，并进行评论
    - [ ] 添加文章编辑状态字段，如需要进行修改，需要丰富内容等
    - [ ] 
1. [ ] 为文章编辑添加乐观锁：[Optimistic Locking (revised)](http://railscasts.com/episodes/59-optimistic-locking-revised)
