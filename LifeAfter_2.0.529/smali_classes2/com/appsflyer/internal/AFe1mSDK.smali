.class public Lcom/appsflyer/internal/AFe1mSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final AFInAppEventParameterName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public AFInAppEventType:Z

.field public AFKeystoreWrapper:Z

.field public AFLogger:I

.field private final d:Z

.field private e:Z

.field private final registerClient:Z

.field private final unregisterClient:[B

.field final valueOf:Ljava/lang/String;

.field public final values:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 65
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 44
    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;ZB)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;ZB)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZB)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x1

    .line 25
    iput-boolean p6, p0, Lcom/appsflyer/internal/AFe1mSDK;->e:Z

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFe1mSDK;->AFInAppEventType:Z

    .line 32
    iput-boolean p6, p0, Lcom/appsflyer/internal/AFe1mSDK;->AFKeystoreWrapper:Z

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/appsflyer/internal/AFe1mSDK;->AFLogger:I

    .line 53
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1mSDK;->values:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/appsflyer/internal/AFe1mSDK;->unregisterClient:[B

    .line 55
    iput-object p3, p0, Lcom/appsflyer/internal/AFe1mSDK;->valueOf:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/appsflyer/internal/AFe1mSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 57
    iput-boolean p5, p0, Lcom/appsflyer/internal/AFe1mSDK;->registerClient:Z

    .line 58
    iput-boolean p6, p0, Lcom/appsflyer/internal/AFe1mSDK;->d:Z

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFe1mSDK;->AFInAppEventType:Z

    return v0
.end method

.method public final AFInAppEventType()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFe1mSDK;->d:Z

    return v0
.end method

.method public final AFKeystoreWrapper()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFe1mSDK;->e:Z

    return v0
.end method

.method public final registerClient()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFe1mSDK;->AFKeystoreWrapper:Z

    return v0
.end method

.method public final valueOf()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFe1mSDK;->registerClient:Z

    return v0
.end method

.method public final values()[B
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1mSDK;->unregisterClient:[B

    return-object v0
.end method
