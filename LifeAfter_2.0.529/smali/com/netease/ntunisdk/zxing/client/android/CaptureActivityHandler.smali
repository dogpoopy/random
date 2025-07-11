.class public final Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UniQR act handler"


# instance fields
.field private final activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

.field private final cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

.field private final decodeThread:Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;

.field private state:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    .line 64
    new-instance v0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;

    .line 65
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->start()V

    .line 66
    sget-object p1, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->state:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;

    .line 69
    iput-object p5, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    .line 70
    invoke-virtual {p5}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->startPreview()V

    .line 71
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method private final getResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ntunisdk_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private restartPreviewAndDecode()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->state:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;

    sget-object v1, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 141
    sget-object v0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->state:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;

    .line 142
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string v2, "decode"

    const-string v3, "id"

    invoke-direct {p0, v2, v3}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 143
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->drawViewfinder()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "id"

    const-string v2, "restart_preview"

    invoke-direct {p0, v2, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto/16 :goto_0

    .line 82
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "decode_succeeded"

    invoke-direct {p0, v2, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 83
    sget-object v0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->state:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;

    .line 84
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;)V

    goto/16 :goto_0

    .line 85
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "decode_failed"

    invoke-direct {p0, v2, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 87
    sget-object p1, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->state:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;

    .line 88
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v2, "decode"

    invoke-direct {p0, v2, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 89
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "return_scan_result"

    invoke-direct {p0, v2, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 90
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    const/4 v1, -0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 91
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->finish()V

    goto/16 :goto_0

    .line 92
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "launch_product_query"

    invoke-direct {p0, v2, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 93
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80000

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    .line 100
    invoke-virtual {v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "UniQR act handler"

    if-eqz v1, :cond_4

    .line 102
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_4

    .line 103
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using browser in package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "com.android.browser"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.android.chrome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 109
    :cond_5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.browser.application_id"

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find anything to handle VIEW of URI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public quitSynchronously()V
    .locals 4

    .line 123
    sget-object v0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;->DONE:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->state:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler$State;

    .line 124
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 125
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "quit"

    invoke-direct {p0, v2, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "decode_succeeded"

    .line 135
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    const-string v0, "decode_failed"

    .line 136
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    return-void
.end method
