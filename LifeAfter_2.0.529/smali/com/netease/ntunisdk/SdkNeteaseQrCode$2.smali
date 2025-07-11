.class Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;
.super Ljava/lang/Object;
.source "SdkNeteaseQrCode.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/ScannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseQrCode;->handleQrCode(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$isAuthLogin:Z

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseQrCode;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->val$isAuthLogin:Z

    iput-object p3, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->val$extra:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScannerCancel()V
    .locals 3

    const-string v0, "onScannerCancel"

    const-string v1, "SdkNeteaseQrCode"

    .line 395
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-boolean v1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->val$isAuthLogin:Z

    if-eqz v1, :cond_0

    .line 397
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->notifyAuthDone(I)V

    goto :goto_0

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$100(Lcom/netease/ntunisdk/SdkNeteaseQrCode;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onScannerLoginSuccess(Ljava/lang/String;)V
    .locals 4

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScannerLoginSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkNeteaseQrCode"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->val$isAuthLogin:Z

    if-eqz v0, :cond_0

    .line 407
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object p1

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->notifyAuthDone(I)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->val$extra:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3, p1, v2}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$200(Lcom/netease/ntunisdk/SdkNeteaseQrCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$300(Lcom/netease/ntunisdk/SdkNeteaseQrCode;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onScannerNeedPay(Ljava/lang/String;)V
    .locals 3

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScannerNeedPay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkNeteaseQrCode"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->val$uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->val$extra:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$200(Lcom/netease/ntunisdk/SdkNeteaseQrCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$400(Lcom/netease/ntunisdk/SdkNeteaseQrCode;ILjava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$2;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$500(Lcom/netease/ntunisdk/SdkNeteaseQrCode;Ljava/lang/String;)V

    return-void
.end method
