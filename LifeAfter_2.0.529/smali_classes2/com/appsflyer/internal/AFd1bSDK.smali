.class public final Lcom/appsflyer/internal/AFd1bSDK;
.super Lcom/appsflyer/internal/AFd1mSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFd1bSDK$AFa1vSDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B/\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0003\u001a\u00020\u0002*\u0004\u0018\u00010\u0002H\u0017\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u001a\u0010\u0003\u001a\u00020\u00058\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00028WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\n"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFd1bSDK;",
        "Lcom/appsflyer/internal/AFd1mSDK;",
        "",
        "AFInAppEventType",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Lcom/appsflyer/internal/AFe1uSDK;",
        "AFKeystoreWrapper",
        "Lcom/appsflyer/internal/AFe1uSDK;",
        "values",
        "()Lcom/appsflyer/internal/AFe1uSDK;",
        "()Ljava/lang/String;",
        "AFInAppEventParameterName",
        "",
        "p0",
        "",
        "p1",
        "",
        "p2",
        "<init>",
        "([BLjava/util/Map;I)V",
        "AFa1vSDK"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static AFInAppEventParameterName:Ljava/lang/String;

.field public static final AFa1vSDK:Lcom/appsflyer/internal/AFd1bSDK$AFa1vSDK;


# instance fields
.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1uSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appsflyer/internal/AFd1bSDK$AFa1vSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFd1bSDK$AFa1vSDK;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/AFd1bSDK;->AFa1vSDK:Lcom/appsflyer/internal/AFd1bSDK$AFa1vSDK;

    const-string v0, "https://%smonitorsdk.%s/remote-debug/exception-manager"

    .line 28
    sput-object v0, Lcom/appsflyer/internal/AFd1bSDK;->AFInAppEventParameterName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/internal/AFd1mSDK;-><init>([BLjava/util/Map;I)V

    .line 21
    sget-object p1, Lcom/appsflyer/internal/AFe1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1uSDK;

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1uSDK;

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Ljava/lang/String;
    .locals 4

    .line 19
    sget-object v0, Lcom/appsflyer/internal/AFd1bSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1052
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1101
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[Exception Manager]: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final values()Lcom/appsflyer/internal/AFe1uSDK;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0
.end method
