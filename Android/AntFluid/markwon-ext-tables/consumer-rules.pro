# BaseBlockTitleSpan / TableBlockTitleBlockSpan 的放大预览入口用 Class.forName
# 按原始类名启动 MarkDownPreviewActivity（ClassNotFoundException 直接 rethrow 崩溃）。
# 该 Activity 声明在 fluid-markdown 的 manifest 中、merge 后 R8 会隐式保活，
# 此处显式 keep，不依赖该隐式行为。
-keep class com.fluid.afm.ui.MarkDownPreviewActivity
