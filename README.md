# NHCustomTextView
###初始化方法：
一个可以自定义的TextView，可以添加PlaceHolder，很简单的小控件初始化方法使用就可以啦 如下图
>initWithFrame

![初始化方法](http://upload-images.jianshu.io/upload_images/1792635-eb314289b8114c28.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
###自定义属性：
>/**
 *  输入框的背景颜色
 */
@property(nonatomic,strong)UIColor * textViewBackgroundColor;

>/**
 *  输入框文字的字体
 */
@property(nonatomic,strong)UIFont * mainTextViewFont;

>/**
 *  输入框内容(默认没有)
 */
@property (nonatomic, copy)  NSString *mainTextViewStr;

>/**
 *  placeHolder字体
 */
@property(nonatomic,strong)UIFont * placeHolderFont;

>/**
 *  placeHolder颜色
 */
@property(nonatomic,strong)UIColor * placeHolderColor;

>/**
 *  placeHolder内容
 */
@property(nonatomic,strong)NSString * placeHolderStr;

像这样设置
![属性设置](http://upload-images.jianshu.io/upload_images/1792635-5655553a98466457.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
###代理方法：

![代理方法](http://upload-images.jianshu.io/upload_images/1792635-2b6bd490de03de7f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

###其他方法：

![取消第一响应者](http://upload-images.jianshu.io/upload_images/1792635-3ddb1aece75be32f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

###截图

![程序截图](http://upload-images.jianshu.io/upload_images/1792635-a2f3cf386432f6e9.gif?imageMogr2/auto-orient/strip)

**第一次写readme 写的不好勿喷，小控件很简单，可能有人会用到，有什么bug多交流**  
我的微信
![微信](http://upload-images.jianshu.io/upload_images/1792635-9cfd29840b73808a.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)