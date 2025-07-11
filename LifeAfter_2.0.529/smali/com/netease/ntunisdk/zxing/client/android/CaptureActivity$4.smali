.class Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$4;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->checkShowLatestImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$4;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    iput-object p2, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string v0, "UniQR act"

    const-string v1, "scanningImage FAILED"

    .line 269
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UniQR act"

    const-string v1, "scanningImage SUCCESS"

    .line 263
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$4;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$4;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->access$100(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
