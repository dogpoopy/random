.class final Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# static fields
.field public static final BARCODE_BITMAP:Ljava/lang/String; = "barcode_bitmap"

.field public static final BARCODE_SCALED_FACTOR:Ljava/lang/String; = "barcode_scaled_factor"

.field private static final TAG:Ljava/lang/String; = "UniQR decode t"


# instance fields
.field private final activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

.field private handler:Landroid/os/Handler;

.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;)V
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
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    .line 55
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 57
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/google/zxing/DecodeHintType;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    if-eqz p3, :cond_0

    .line 59
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 63
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    :cond_1
    const-class p1, Lcom/google/zxing/BarcodeFormat;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    .line 66
    sget-object p1, Lcom/netease/ntunisdk/zxing/client/android/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 67
    sget-object p1, Lcom/netease/ntunisdk/zxing/client/android/DecodeFormatManager;->INDUSTRIAL_FORMATS:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 68
    sget-object p1, Lcom/netease/ntunisdk/zxing/client/android/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 69
    sget-object p1, Lcom/netease/ntunisdk/zxing/client/android/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    sget-object p3, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_3

    .line 74
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    sget-object p2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Hints: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UniQR decode t"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 90
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 91
    new-instance v0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    iget-object v2, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->handler:Landroid/os/Handler;

    .line 92
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 93
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
