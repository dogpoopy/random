.class public final Lcom/appsflyer/internal/AFe1ySDK;
.super Lcom/appsflyer/internal/AFd1mSDK;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B;\u0008\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u000b\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0016\u0008\u0002\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0016\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0015\u0010\u0003\u001a\u00020\u0002*\u0004\u0018\u00010\u0002H\u0017\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u001a\u0010\n\u001a\u00020\u00058\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0008\u001a\u00020\u000bX\u0007\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000c\u001a\u00020\u000e8\u0017X\u0097D\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\n\u0010\u0011R\u0014\u0010\u000f\u001a\u00020\u00028WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0012"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFe1ySDK;",
        "Lcom/appsflyer/internal/AFd1mSDK;",
        "",
        "AFInAppEventType",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Lcom/appsflyer/internal/AFe1uSDK;",
        "e",
        "Lcom/appsflyer/internal/AFe1uSDK;",
        "values",
        "()Lcom/appsflyer/internal/AFe1uSDK;",
        "valueOf",
        "Lcom/appsflyer/internal/AFd1rSDK;",
        "AFInAppEventParameterName",
        "Lcom/appsflyer/internal/AFd1rSDK;",
        "",
        "AFKeystoreWrapper",
        "Z",
        "()Z",
        "()Ljava/lang/String;",
        "p0",
        "",
        "p1",
        "",
        "p2",
        "",
        "p3",
        "<init>",
        "(Lcom/appsflyer/internal/AFd1rSDK;[BLjava/util/Map;I)V"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1rSDK;

.field private final AFKeystoreWrapper:Z

.field private final e:Lcom/appsflyer/internal/AFe1uSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1rSDK;[B)V
    .locals 8

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFe1ySDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;[BLjava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lcom/appsflyer/internal/AFd1rSDK;[BLjava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFd1rSDK;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p2, p3, p4}, Lcom/appsflyer/internal/AFd1mSDK;-><init>([BLjava/util/Map;I)V

    .line 13
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1rSDK;

    .line 24
    sget-object p1, Lcom/appsflyer/internal/AFe1uSDK;->valueOf:Lcom/appsflyer/internal/AFe1uSDK;

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1ySDK;->e:Lcom/appsflyer/internal/AFe1uSDK;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFd1rSDK;[BLjava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/16 p4, 0x7d0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsflyer/internal/AFe1ySDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;[BLjava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Ljava/lang/String;
    .locals 4

    .line 22
    new-instance v0, Lcom/appsflyer/internal/AFi1cSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1rSDK;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/appsflyer/internal/AFi1cSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFi1aSDK;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1218
    iget-object v1, v0, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v2, Lcom/appsflyer/internal/AFi1cSDK;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/appsflyer/internal/AFi1cSDK;->valueOf:Lcom/appsflyer/internal/AFd1rSDK;

    .line 2168
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 3025
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 2084
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1220
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[RD]: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final valueOf()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFe1ySDK;->AFKeystoreWrapper:Z

    return v0
.end method

.method public final values()Lcom/appsflyer/internal/AFe1uSDK;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1ySDK;->e:Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0
.end method
