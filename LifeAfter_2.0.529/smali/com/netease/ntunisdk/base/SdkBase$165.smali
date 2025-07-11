.class final Lcom/netease/ntunisdk/base/SdkBase$165;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->showViewFinished(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V
    .locals 0

    .line 6225
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 6228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showViewFinished, current thread="

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

    .line 6229
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->b:Ljava/lang/String;

    const-string v1, "onRewarded()"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6230
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->y(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnShowViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnShowViewListener;->onRewarded()V

    .line 6231
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->b:Ljava/lang/String;

    const-string v1, "onOpened()"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6232
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->y(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnShowViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnShowViewListener;->onOpened()V

    .line 6233
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->b:Ljava/lang/String;

    const-string v1, "onFailed()"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6234
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->y(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnShowViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnShowViewListener;->onFailed()V

    .line 6235
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->b:Ljava/lang/String;

    const-string v1, "onClosed()"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6236
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->y(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnShowViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnShowViewListener;->onClosed()V

    :cond_3
    return-void
.end method
