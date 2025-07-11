.class public Lcom/netease/mpay/oversea/MpayOverseaApplication;
.super Landroid/app/Application;
.source "MpayOverseaApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static initDMM(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->initializeSDK(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static initLineGame(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/w3;->a()Lcom/netease/mpay/oversea/w3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/w3;->a(Landroid/app/Application;)V

    return-void
.end method

.method public static onCreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 2
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 3
    invoke-static {p0}, Lcom/netease/mpay/oversea/MpayOverseaApplication;->onCreate(Landroid/content/Context;)V

    .line 4
    invoke-static {p0}, Lcom/netease/mpay/oversea/MpayOverseaApplication;->initLineGame(Landroid/app/Application;)V

    return-void
.end method
