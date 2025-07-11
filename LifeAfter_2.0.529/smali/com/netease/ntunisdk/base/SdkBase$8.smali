.class final Lcom/netease/ntunisdk/base/SdkBase$8;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->onKeyDown(ILcom/netease/ntunisdk/base/PadEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lcom/netease/ntunisdk/base/PadEvent;

.field final synthetic d:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;ILcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 6791
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$8;->d:Lcom/netease/ntunisdk/base/SdkBase;

    iput p2, p0, Lcom/netease/ntunisdk/base/SdkBase$8;->a:I

    iput-object p3, p0, Lcom/netease/ntunisdk/base/SdkBase$8;->c:Lcom/netease/ntunisdk/base/PadEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 6794
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKeyDown, current thread="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK Base"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6795
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$8;->d:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->A(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnControllerListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$8;->a:I

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$8;->c:Lcom/netease/ntunisdk/base/PadEvent;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/OnControllerListener;->onKeyDown(ILcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method
