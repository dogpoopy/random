.class final Lcom/netease/ntunisdk/base/SdkBase$94;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntOpenManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 3267
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$94;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 3270
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$94;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v1, "FEATURE_HAS_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3271
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$94;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->openManager()V

    return-void

    .line 3273
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$94;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3274
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase$94;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v4, v4, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/base/SdkBase;

    .line 3275
    invoke-virtual {v3, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 3276
    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/SdkBase;->openManager()V

    :cond_2
    return-void
.end method
