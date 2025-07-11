.class final Lcom/netease/ntunisdk/base/SdkBase$131;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntUpdateRank(Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic c:D


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;D)V
    .locals 0

    .line 5360
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$131;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$131;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/netease/ntunisdk/base/SdkBase$131;->c:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 5363
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$131;->b:Lcom/netease/ntunisdk/base/SdkBase;

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

    .line 5364
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$131;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 5365
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$131;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/netease/ntunisdk/base/SdkBase$131;->c:D

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/ntunisdk/base/SdkBase;->updateRank(Ljava/lang/String;D)V

    goto :goto_0

    .line 5367
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$131;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$131;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/netease/ntunisdk/base/SdkBase$131;->c:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->updateRank(Ljava/lang/String;D)V

    return-void
.end method
