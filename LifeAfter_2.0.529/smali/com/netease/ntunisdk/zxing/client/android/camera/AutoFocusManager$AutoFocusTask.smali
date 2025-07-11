.class final Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;


# direct methods
.method private constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;-><init>(Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 131
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :catch_0
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;->start()V

    const/4 p1, 0x0

    return-object p1
.end method
