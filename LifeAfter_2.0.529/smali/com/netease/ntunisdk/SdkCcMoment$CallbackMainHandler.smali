.class Lcom/netease/ntunisdk/SdkCcMoment$CallbackMainHandler;
.super Landroid/os/Handler;
.source "SdkCcMoment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkCcMoment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackMainHandler"
.end annotation


# instance fields
.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/SdkCcMoment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkCcMoment;)V
    .locals 1

    .line 1075
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1076
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment$CallbackMainHandler;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment$CallbackMainHandler;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/SdkCcMoment;

    if-nez v0, :cond_0

    const-string p1, "SdkCcMoment"

    const-string v0, "null ref."

    .line 1083
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1086
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1087
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V

    return-void
.end method
