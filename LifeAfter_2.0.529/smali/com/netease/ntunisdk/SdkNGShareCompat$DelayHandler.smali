.class final Lcom/netease/ntunisdk/SdkNGShareCompat$DelayHandler;
.super Landroid/os/Handler;
.source "SdkNGShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkNGShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelayHandler"
.end annotation


# instance fields
.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/SdkNGShareCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNGShareCompat;)V
    .locals 1

    .line 973
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 974
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DelayHandler;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 979
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DelayHandler;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/SdkNGShareCompat;

    if-eqz p1, :cond_1

    .line 981
    invoke-static {p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->access$2100(Lcom/netease/ntunisdk/SdkNGShareCompat;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 982
    invoke-static {p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->access$2200(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/FloatingButtonUtil;->stop(Landroid/content/Context;)V

    .line 983
    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareFinished(Z)V

    .line 985
    :cond_0
    invoke-static {p1, v1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->access$2102(Lcom/netease/ntunisdk/SdkNGShareCompat;Z)Z

    :cond_1
    return-void
.end method
