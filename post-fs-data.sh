#!/system/bin/sh
# 请不要硬编码 /magisk/modname/... ; 请使用 $MODDIR/...
#MODDIR=${0%/*}
#MNT="/" #从根目录挂载（默认从/mnt/vendor/挂载）
# 这将使你的脚本更加兼容，即使Magisk在未来改变了它的挂载点
MODDIR=${0%/*}
mount --bind $MODDIR/my_region/etc/extension/com.oplus.oplus-feature.xml /my_region/etc/extension/com.oplus.oplus-feature.xml
# 这个脚本将以 post-fs-data 模式执行(系统启动前执行)
# 更多信息请访问 Magisk 主题
