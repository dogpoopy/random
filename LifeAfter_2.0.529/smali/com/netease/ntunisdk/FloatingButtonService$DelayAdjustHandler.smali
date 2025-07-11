.class final Lcom/netease/ntunisdk/FloatingButtonService$DelayAdjustHandler;
.super Landroid/os/Handler;
.source "FloatingButtonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/FloatingButtonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelayAdjustHandler"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/FloatingButtonService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/FloatingButtonService;)V
    .locals 1

    .line 212
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService$DelayAdjustHandler;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 218
    iget-object p1, p0, Lcom/netease/ntunisdk/FloatingButtonService$DelayAdjustHandler;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/FloatingButtonService;

    if-eqz p1, :cond_0

    .line 220
    invoke-static {p1}, Lcom/netease/ntunisdk/FloatingButtonService;->access$100(Lcom/netease/ntunisdk/FloatingButtonService;)V

    :cond_0
    return-void
.end method
