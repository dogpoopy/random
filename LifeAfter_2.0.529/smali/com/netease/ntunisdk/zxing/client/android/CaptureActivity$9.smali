.class Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$9;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$9;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string v0, "UniQR act"

    const-string v1, "scanningImage FAILED"

    .line 649
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$9;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    const-string v1, "ntunisdk_scan_not_valid_qr"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->toastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UniQR act"

    const-string v1, "scanningImage SUCCESS"

    .line 643
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$9;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->access$300(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/lang/String;)V

    return-void
.end method
