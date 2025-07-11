.class final Lcom/netease/ntunisdk/base/SdkBase$65;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntUpdateApi(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8264
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$65;->d:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$65;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/SdkBase$65;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 8267
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$65;->d:Lcom/netease/ntunisdk/base/SdkBase;

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

    .line 8268
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$65;->d:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/SdkBase;

    .line 8269
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$65;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/netease/ntunisdk/base/SdkBase;->updateApi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8271
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$65;->d:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$65;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$65;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->updateApi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
