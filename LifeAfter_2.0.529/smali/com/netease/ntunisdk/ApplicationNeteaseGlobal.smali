.class public Lcom/netease/ntunisdk/ApplicationNeteaseGlobal;
.super Lcom/netease/ntunisdk/base/SdkApplication;
.source "ApplicationNeteaseGlobal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSDK netease_global"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_global"

    return-object v0
.end method

.method public handleOnApplicationAttachBaseContext(Landroid/content/Context;Landroid/app/Application;)V
    .locals 1

    const-string p2, "UniSDK netease_global"

    const-string v0, "handleOnApplicationAttachBaseContext..."

    .line 29
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p2, v0, :cond_0

    .line 31
    invoke-static {p1}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public handleOnApplicationOnCreate(Landroid/content/Context;Landroid/app/Application;)V
    .locals 2

    const-string v0, "UniSDK netease_global"

    const-string v1, "handleOnApplicationOnCreate..."

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :try_start_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/MpayOverseaApplication;->onCreate(Landroid/content/Context;)V

    .line 40
    invoke-static {p2}, Lcom/netease/mpay/oversea/MpayOverseaApplication;->initLineGame(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
