.class Lcom/netease/ntunisdk/SdkNeteaseGlobal$3;
.super Ljava/lang/Object;
.source "SdkNeteaseGlobal.java"

# interfaces
.implements Lcom/netease/mpay/oversea/CheckAutoLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseGlobal;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldAutoLogin(Z)V
    .locals 3

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldAutoLogin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x66

    if-eqz p1, :cond_0

    .line 688
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$1300(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Lcom/netease/mpay/oversea/MpayOverseaApi;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$1200(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->autoLogin(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 690
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 691
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$1200(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    move-result-object v1

    const/16 v2, 0x3ed

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;->onFailure(ILjava/lang/String;I)V

    goto :goto_0

    .line 694
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$1200(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    move-result-object p1

    const/4 v1, -0x1

    const-string v2, "shouldAutoLogin=false"

    invoke-virtual {p1, v1, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;->onFailure(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method
