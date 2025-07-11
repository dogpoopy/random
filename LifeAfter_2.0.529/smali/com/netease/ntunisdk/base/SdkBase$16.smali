.class final Lcom/netease/ntunisdk/base/SdkBase$16;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->onLeftStick(FFLcom/netease/ntunisdk/base/PadEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic b:Lcom/netease/ntunisdk/base/PadEvent;

.field final synthetic c:F

.field final synthetic d:F


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;FFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 6875
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$16;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput p2, p0, Lcom/netease/ntunisdk/base/SdkBase$16;->c:F

    iput p3, p0, Lcom/netease/ntunisdk/base/SdkBase$16;->d:F

    iput-object p4, p0, Lcom/netease/ntunisdk/base/SdkBase$16;->b:Lcom/netease/ntunisdk/base/PadEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 6878
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLeftStick, current thread="

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

    .line 6879
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$16;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->A(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnControllerListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$16;->c:F

    iget v2, p0, Lcom/netease/ntunisdk/base/SdkBase$16;->d:F

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$16;->b:Lcom/netease/ntunisdk/base/PadEvent;

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/ntunisdk/base/OnControllerListener;->onLeftStick(FFLcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method
