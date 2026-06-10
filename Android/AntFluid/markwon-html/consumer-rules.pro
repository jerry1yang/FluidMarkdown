# CommonMarkEntities 静态块用 getDeclaredField 反射读取 commonmark 的
# Html5Entities.NAMED_CHARACTER_REFERENCES 私有静态字段；R8 重命名/剔除该字段后
# 仅 catch(Throwable) 兜底为 emptyMap，HTML 命名实体（&nbsp; &amp; 等）静默全部失效。
-keepclassmembers class org.commonmark.internal.util.Html5Entities { <fields>; }

# StrikeHandler 通过 Class.forName 按原始类名探测 strikethrough 扩展是否在 classpath
#（类由 markwon-ext-strikethrough/libs 捆绑 jar 提供）；混淆改名后探测恒失败，
# <s>/<del> 静默降级为系统 StrikethroughSpan，绕过 SpanFactory。仅需保住类名。
-keep class org.commonmark.ext.gfm.strikethrough.Strikethrough
