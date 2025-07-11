.class public final enum Lcom/appsflyer/internal/AFf1lSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFf1lSDK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFf1lSDK;

.field private static final synthetic AFInAppEventType:[Lcom/appsflyer/internal/AFf1lSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1lSDK;

.field public static final enum values:Lcom/appsflyer/internal/AFf1lSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/appsflyer/internal/AFf1lSDK;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/appsflyer/internal/AFf1lSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFf1lSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1lSDK;

    .line 11
    new-instance v0, Lcom/appsflyer/internal/AFf1lSDK;

    const/4 v2, 0x1

    const-string v3, "USE_CACHED"

    invoke-direct {v0, v3, v2}, Lcom/appsflyer/internal/AFf1lSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFf1lSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFf1lSDK;

    .line 15
    new-instance v0, Lcom/appsflyer/internal/AFf1lSDK;

    const/4 v3, 0x2

    const-string v4, "FAILURE"

    invoke-direct {v0, v4, v3}, Lcom/appsflyer/internal/AFf1lSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFf1lSDK;->values:Lcom/appsflyer/internal/AFf1lSDK;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appsflyer/internal/AFf1lSDK;

    .line 3
    sget-object v4, Lcom/appsflyer/internal/AFf1lSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1lSDK;

    aput-object v4, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFf1lSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFf1lSDK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFf1lSDK;->values:Lcom/appsflyer/internal/AFf1lSDK;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appsflyer/internal/AFf1lSDK;->AFInAppEventType:[Lcom/appsflyer/internal/AFf1lSDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFf1lSDK;
    .locals 1

    .line 3
    const-class v0, Lcom/appsflyer/internal/AFf1lSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFf1lSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFf1lSDK;
    .locals 1

    .line 3
    sget-object v0, Lcom/appsflyer/internal/AFf1lSDK;->AFInAppEventType:[Lcom/appsflyer/internal/AFf1lSDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFf1lSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFf1lSDK;

    return-object v0
.end method
