.class public final Lcom/appsflyer/internal/AFi1vSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFi1xSDK;


# instance fields
.field private values:Lcom/appsflyer/internal/platform_extension/PluginInfo;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v6, Lcom/appsflyer/internal/platform_extension/PluginInfo;

    .line 8
    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->NATIVE:Lcom/appsflyer/internal/platform_extension/Plugin;

    const-string v2, "6.13.0"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/platform_extension/PluginInfo;-><init>(Lcom/appsflyer/internal/platform_extension/Plugin;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, p0, Lcom/appsflyer/internal/AFi1vSDK;->values:Lcom/appsflyer/internal/platform_extension/PluginInfo;

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 21
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1vSDK;->values:Lcom/appsflyer/internal/platform_extension/PluginInfo;

    invoke-virtual {v1}, Lcom/appsflyer/internal/platform_extension/PluginInfo;->getPlugin()Lcom/appsflyer/internal/platform_extension/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/internal/platform_extension/Plugin;->getPluginName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "platform"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 22
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1vSDK;->values:Lcom/appsflyer/internal/platform_extension/PluginInfo;

    invoke-virtual {v1}, Lcom/appsflyer/internal/platform_extension/PluginInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 20
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1vSDK;->values:Lcom/appsflyer/internal/platform_extension/PluginInfo;

    invoke-virtual {v1}, Lcom/appsflyer/internal/platform_extension/PluginInfo;->getAdditionalParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1vSDK;->values:Lcom/appsflyer/internal/platform_extension/PluginInfo;

    invoke-virtual {v1}, Lcom/appsflyer/internal/platform_extension/PluginInfo;->getAdditionalParams()Ljava/util/Map;

    move-result-object v1

    const-string v2, "extras"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final values(Lcom/appsflyer/internal/platform_extension/PluginInfo;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1vSDK;->values:Lcom/appsflyer/internal/platform_extension/PluginInfo;

    return-void
.end method
