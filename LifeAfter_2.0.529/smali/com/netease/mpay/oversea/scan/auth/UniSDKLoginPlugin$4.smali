.class Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$4;
.super Ljava/lang/Object;
.source "UniSDKLoginPlugin.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->loginWithCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/scan/server/ServerApiCallback<",
        "Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

.field final synthetic val$decodedData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$4;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$4;->val$decodedData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/netease/mpay/oversea/scan/server/modules/ApiError;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$4;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$900(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V

    return-void
.end method

.method public onSuccess(Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$4;->val$decodedData:Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->checkValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$4;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$1000(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$4;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$900(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 170
    check-cast p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$4;->onSuccess(Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;)V

    return-void
.end method
