.class final Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils$1;
.super Ljava/lang/Object;
.source "UniSDKDeviceIDUtils.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/utils/GaidUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->InitUnisdkDeviceId(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UniDeviceID"

    const-string v1, "set device id from gaid"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->access$000(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
