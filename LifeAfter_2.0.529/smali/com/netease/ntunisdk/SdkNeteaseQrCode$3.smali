.class Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;
.super Ljava/lang/Object;
.source "SdkNeteaseQrCode.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;


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

.field final synthetic val$isAuthLogin:Z


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseQrCode;Z)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->val$isAuthLogin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchQrCode(Ljava/lang/String;)V
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5916\u90e8\u4e8c\u7ef4\u7801: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkNeteaseQrCode"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->val$isAuthLogin:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->notifyAuthDone(I)V

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$600(Lcom/netease/ntunisdk/SdkNeteaseQrCode;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
