.class Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3;
.super Ljava/lang/Object;
.source "UniSDKLoginPlugin.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnFinishInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->initUniSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishInit(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "finishInit, code = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK AuthLogin"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "UniSDK ntInit failed, scan qrcode ignore"

    .line 159
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$900(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V

    goto :goto_1

    .line 152
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    new-instance v0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3$1;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3$1;-><init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3;)V

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->postOnResume(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
