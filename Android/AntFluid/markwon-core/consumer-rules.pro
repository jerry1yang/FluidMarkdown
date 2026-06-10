# 空 consumer 规则文件：build.gradle 引用了该文件但上游源码中缺失，
# AGP 9 对缺失的 consumerProguardFiles 报错，补空文件解锁构建。
# core 模块自身无反射 / JNI / 按名查找，无需 keep 规则，保持为空。
# 库内真实反射点的规则见 markwon-html / markwon-ext-tables 的 consumer-rules.pro。
