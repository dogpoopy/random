.class final Lcom/netease/ntunisdk/base/SdkBase$127;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->queryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/AccountInfo;

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/AccountInfo;)V
    .locals 0

    .line 5267
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$127;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$127;->a:Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 5270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onQueryMyAccountFinished, current thread="

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

    .line 5271
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$127;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->p(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/QueryFriendListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$127;->a:Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/QueryFriendListener;->onQueryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method
