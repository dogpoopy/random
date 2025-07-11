.class final Lcom/netease/ntunisdk/base/SdkU3d$1;
.super Ljava/lang/Object;
.source "SdkU3d.java"

# interfaces
.implements Lcom/netease/download/listener/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkU3d;->initDL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onFinish"

    .line 762
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->b()Lcom/netease/ntunisdk/base/callback/U3dDlCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "filebytes"

    .line 764
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 765
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->b()Lcom/netease/ntunisdk/base/callback/U3dDlCallback;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/netease/ntunisdk/base/model/SdkDlBytes;

    instance-of v3, v0, [B

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, [B

    :goto_0
    invoke-direct {v2, v0}, Lcom/netease/ntunisdk/base/model/SdkDlBytes;-><init>([B)V

    invoke-interface {v1, p1, v2}, Lcom/netease/ntunisdk/base/callback/U3dDlCallback;->onFinish(Ljava/lang/String;Lcom/netease/ntunisdk/base/model/SdkDlBytes;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 767
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DL_OnFinish"

    invoke-static {v1, v0, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final onProgress(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onProgress"

    .line 752
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->b()Lcom/netease/ntunisdk/base/callback/U3dDlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 754
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->b()Lcom/netease/ntunisdk/base/callback/U3dDlCallback;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/callback/U3dDlCallback;->onProgress(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 756
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DL_OnProgress"

    invoke-static {v1, v0, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
