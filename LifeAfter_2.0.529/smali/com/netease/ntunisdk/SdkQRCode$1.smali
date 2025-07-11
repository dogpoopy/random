.class Lcom/netease/ntunisdk/SdkQRCode$1;
.super Ljava/lang/Object;
.source "SdkQRCode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkQRCode;->unisdkCodeScannerDone(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkQRCode;

.field final synthetic val$code:I

.field final synthetic val$extra:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkQRCode;ILjava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkQRCode$1;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    iput p2, p0, Lcom/netease/ntunisdk/SdkQRCode$1;->val$code:I

    iput-object p3, p0, Lcom/netease/ntunisdk/SdkQRCode$1;->val$extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "UniQR sdk"

    const-string v1, "runOnUiThread unisdkCodeScannerDone"

    .line 123
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode$1;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkQRCode;->access$000(Lcom/netease/ntunisdk/SdkQRCode;)Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode$1;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkQRCode;->access$000(Lcom/netease/ntunisdk/SdkQRCode;)Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/SdkQRCode$1;->val$code:I

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkQRCode$1;->val$extra:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/OnCodeScannerListener;->codeScannerFinish(ILjava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode$1;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/SdkQRCode;->access$002(Lcom/netease/ntunisdk/SdkQRCode;Lcom/netease/ntunisdk/base/OnCodeScannerListener;)Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    :cond_0
    return-void
.end method
