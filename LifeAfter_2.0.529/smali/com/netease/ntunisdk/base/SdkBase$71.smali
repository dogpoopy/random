.class final Lcom/netease/ntunisdk/base/SdkBase$71;
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

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;ZILjava/lang/String;)V
    .locals 0

    .line 8455
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->a:Z

    iput p3, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->c:I

    iput-object p4, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 8458
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

    .line 8459
    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->a:Z

    if-eqz v0, :cond_0

    .line 8460
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->E(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnVerifyListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->c:I

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/OnVerifyListener;->onSuccess(ILjava/lang/String;)V

    return-void

    .line 8462
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->E(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnVerifyListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->c:I

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/OnVerifyListener;->onFailure(ILjava/lang/String;)V

    return-void
.end method
