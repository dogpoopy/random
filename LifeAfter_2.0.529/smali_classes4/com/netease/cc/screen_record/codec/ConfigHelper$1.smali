.class final Lcom/netease/cc/screen_record/codec/ConfigHelper$1;
.super Ljava/lang/Object;
.source "ConfigHelper.java"

# interfaces
.implements Lcom/netease/cc/screen_record/codec/RecorderUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/screen_record/codec/ConfigHelper;->readConfigFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 130
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 140
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
