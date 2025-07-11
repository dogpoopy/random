.class final Lcom/netease/ntunisdk/base/SdkBase$169;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V
    .locals 0

    .line 9281
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 9284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runOnGLThread, onExtendFuncCall: json="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", current thread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK Base"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d2(Ljava/lang/String;Ljava/lang/String;)V

    .line 9285
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->F(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnExtendFuncListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9286
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->F(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnExtendFuncListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/OnExtendFuncListener;->onExtendFuncCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
