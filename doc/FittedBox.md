# FittedBox

当子组件的宽高比和父组件的宽高比不一样时，我们等比拉伸或者填充父组件，这时我们可以使用FittedBox.


fit参数表示了子控件的填充方式，说明如下：

BoxFit.fill：填充父组件，宽高比发生变化。
BoxFit.contain：等比拉伸，直到宽度或者高度有一边充满父容器。
BoxFit.cover：尽可能的小，等比拉伸充满父容器。
BoxFit.fitWidth：等比拉伸，宽充满父容器。
BoxFit.fitHeight：等比拉伸，高充满父容器。
BoxFit.none：默认子组件居中，不做拉伸处理，超出父容器的部分裁剪。

