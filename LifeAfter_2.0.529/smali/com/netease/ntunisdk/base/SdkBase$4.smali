.class final Lcom/netease/ntunisdk/base/SdkBase$4;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntMoreGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 6443
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$4;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 6446
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$4;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "FEATURE_HAS_MOREGAME_BTN"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6447
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase$4;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v4, v4, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6448
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 6449
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->moreGame()V

    goto :goto_0

    .line 6452
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$4;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 6453
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$4;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->moreGame()V

    :cond_2
    return-void
.end method
