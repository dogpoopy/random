.class Lcom/netease/ntunisdk/SdkQRCode$5;
.super Ljava/lang/Object;
.source "SdkQRCode.java"

# interfaces
.implements Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkQRCode;->startScanTheImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkQRCode;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkQRCode;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkQRCode$5;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode$5;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    const/16 v1, 0xa

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkQRCode;->codeScannerDone(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode$5;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/SdkQRCode;->codeScannerDone(ILjava/lang/String;)V

    return-void
.end method
