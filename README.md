# ColoringByPixel
# 像素涂色

#### PaintingViewController
* mtkView 渲染涂色的场景 （未实现）
* dummy scrollView缩放时的傀儡视图，透明的。
* scrollView 用来缩放移动dummy，didScroll时，参数传递给mtlView，让mtlView自行根据参数来重新渲染

#### ColoringMTKView 
* 根据所给的图片，绘制grid、number、texture （未实现）
* 根据给的offset和size，进行缩放、平移的渲染（未实现）
* 处理点击事件，查找对应的格子，以及格子所在的group（未实现）



