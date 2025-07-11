.class final Lcom/netease/ntunisdk/base/SdkBase$172;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9409
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iput-wide p2, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->a:J

    iput-object p4, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->b:Ljava/lang/String;

    iput p5, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->d:I

    iput p6, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->e:I

    iput-object p7, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 9412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cur thread:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",ui thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK Base"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9413
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9414
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/netease/ntunisdk/base/SdkBase;

    .line 9415
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->b:Ljava/lang/String;

    iget v4, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->d:I

    iget v5, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->e:I

    iget-object v6, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->g:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/netease/ntunisdk/base/SdkBase;->createQRCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9417
    :cond_0
    iget-object v8, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v9, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->b:Ljava/lang/String;

    iget v10, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->d:I

    iget v11, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->e:I

    iget-object v12, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->f:Ljava/lang/String;

    iget-object v13, p0, Lcom/netease/ntunisdk/base/SdkBase$172;->g:Ljava/lang/String;

    invoke-virtual/range {v8 .. v13}, Lcom/netease/ntunisdk/base/SdkBase;->createQRCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
