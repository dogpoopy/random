.class public Lcom/netease/cc/screen_record/codec/log/CCLog;
.super Ljava/lang/Object;
.source "CCLog.java"


# static fields
.field public static recorderUtil:Lcom/netease/cc/screen_record/codec/RecorderUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    sget-object v0, Lcom/netease/cc/screen_record/codec/log/CCLog;->recorderUtil:Lcom/netease/cc/screen_record/codec/RecorderUtil;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0, p0, p1}, Lcom/netease/cc/screen_record/codec/RecorderUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v0, Lcom/netease/cc/screen_record/codec/log/CCLog;->recorderUtil:Lcom/netease/cc/screen_record/codec/RecorderUtil;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0, p0, p1}, Lcom/netease/cc/screen_record/codec/RecorderUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v0, Lcom/netease/cc/screen_record/codec/log/CCLog;->recorderUtil:Lcom/netease/cc/screen_record/codec/RecorderUtil;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p0, p1}, Lcom/netease/cc/screen_record/codec/RecorderUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setRecorderUtil(Lcom/netease/cc/screen_record/codec/RecorderUtil;)V
    .locals 0

    .line 10
    sput-object p0, Lcom/netease/cc/screen_record/codec/log/CCLog;->recorderUtil:Lcom/netease/cc/screen_record/codec/RecorderUtil;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v0, Lcom/netease/cc/screen_record/codec/log/CCLog;->recorderUtil:Lcom/netease/cc/screen_record/codec/RecorderUtil;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p0, p1}, Lcom/netease/cc/screen_record/codec/RecorderUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v0, Lcom/netease/cc/screen_record/codec/log/CCLog;->recorderUtil:Lcom/netease/cc/screen_record/codec/RecorderUtil;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p0, p1}, Lcom/netease/cc/screen_record/codec/RecorderUtil;->logw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
