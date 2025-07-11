.class final Lcom/netease/ntunisdk/base/SdkBase$61;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntTrackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8147
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 8150
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    const-string v1, "ngadvert"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UniSDK Base"

    const-string v2, "call ngadvert"

    .line 8151
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8152
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->trackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8154
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8155
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 8156
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->trackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8158
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$61;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->trackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
