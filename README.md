# 存放静态资源的仓库

1. 新建仓库，将本地仓库的图片上传到远程仓库
2. 然后在其他地方就可以使用远程仓库中资源（主要是图片）的链接引入
3. 本人主要是将这些链接引入我的个人网站。

## 作用

在项目中可以不用新建文件夹放入静态资源，写繁琐的相对路径。

## 注意

如果直接复制码云 gitee 仓库中的图片地址，复制的是 base64，太长了，使用并不方便。

只需要将链接中的 blob 改成 raw，即可得到正确的图片链接，而不是 base64。例如：

```bash
https://gitee.com/scripthqs/assets/blob/master/js/%E5%8E%9F%E5%9E%8B%E9%93%BE.png
//将链接中的blob改成raw，即可
https://gitee.com/scripthqs/assets/raw/master/js/%E5%8E%9F%E5%9E%8B%E9%93%BE.png
```

base64 的图片：

```bash
data:image/png;base64,ixxx几万个字符
```

## 配合 picGo(推荐)

PicGo 一个图床工具。图床，就是自动把本地图片转换成链接的一款工具。

登录 github，新建仓库或者使用已有仓库。（仓库权限选择 Public，因为私有库只有自己能够访问，因此图片上传上去之后是没法显示的）

### 生成 token

1. 创建好后，需要在 GitHub 上生成一个 token 以便 PicGo 来操作我们的仓库，来到个人中心，点击 setting 后下滑可以看到 Developer settings
2. 点击 Developer settings 就能看到 Personal access tokens，我们在这里创建需要的 token
3. 点击 Generate new token 创建一个新 token，选择 repo，同时它会把包含其中的都会勾选上，我们勾选这些就可以了。然后拉到最下方点击绿色按钮，Generate token 即可。然后这里会生成一个 token ，记得复制保存到其他地方，因为这个 token 只显示一次。

### 配置 PicGo

打开 PicGo 面板，选择 Github 图床进行配置

### 使用 Gitee 代替 Github

Gitee 的网速对国内更加友好，PicGo 默认不支持 Gitee，所以需要先下载插件 gitee-uploader

1. 新建仓库（公有）
2. 获取仓库访问 token
3. 在个人设置里，选择私人令牌
4. 生成令牌，马上复制保存，因为之后就不会再出现这个 token 了

```text
repo: 用户名/仓库名
branch: 分支名
token: 码云的token，复制上一步的token
path: 图片在仓库的保存路径，可以根据自己的情况填写
```

### 使用 jsdelivr 的cdn加速服务

```text
https://cdn.jsdelivr.net/gh/scripthqs/assets
```
