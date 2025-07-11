.class final Lcom/netease/ntunisdk/base/SdkBase$70;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->verifyDone(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;ZILjava/lang/String;)V
    .locals 0

    .line 8442
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$70;->d:Lcom/netease/ntunisdk/base/SdkBase;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/base/SdkBase$70;->a:Z

    iput p3, p0, Lcom/netease/ntunisdk/base/SdkBase$70;->b:I

    iput-object p4, p0, Lcom/netease/ntunisdk/base/SdkBase$70;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 8445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "verifyDone, current thread="

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

    .line 8446
    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/SdkBase$70;->a:Z

    if-eqz v0, :cond_0

    .line 8447
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$70;->d:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->E(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnVerifyListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$70;->b:I

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$70;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/OnVerifyListener;->onSuccess(ILjava/lang/String;)V

    return-void

    .line 8449
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$70;->d:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->E(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnVerifyListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$70;->b:I

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$70;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/OnVerifyListener;->onFailure(ILjava/lang/String;)V

    return-void
.end method
