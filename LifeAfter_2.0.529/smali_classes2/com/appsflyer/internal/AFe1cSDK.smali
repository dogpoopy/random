.class public final enum Lcom/appsflyer/internal/AFe1cSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFe1cSDK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFe1cSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

.field private static final synthetic valueOf:[Lcom/appsflyer/internal/AFe1cSDK;

.field public static final enum values:Lcom/appsflyer/internal/AFe1cSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/appsflyer/internal/AFe1cSDK;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/appsflyer/internal/AFe1cSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFe1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1cSDK;

    new-instance v0, Lcom/appsflyer/internal/AFe1cSDK;

    const/4 v2, 0x1

    const-string v3, "FAILURE"

    invoke-direct {v0, v3, v2}, Lcom/appsflyer/internal/AFe1cSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFe1cSDK;->values:Lcom/appsflyer/internal/AFe1cSDK;

    new-instance v0, Lcom/appsflyer/internal/AFe1cSDK;

    const/4 v3, 0x2

    const-string v4, "TIMEOUT"

    invoke-direct {v0, v4, v3}, Lcom/appsflyer/internal/AFe1cSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFe1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appsflyer/internal/AFe1cSDK;

    .line 3
    sget-object v4, Lcom/appsflyer/internal/AFe1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1cSDK;

    aput-object v4, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFe1cSDK;->values:Lcom/appsflyer/internal/AFe1cSDK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFe1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appsflyer/internal/AFe1cSDK;->valueOf:[Lcom/appsflyer/internal/AFe1cSDK;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1cSDK;
    .locals 1

    .line 3
    const-class v0, Lcom/appsflyer/internal/AFe1cSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFe1cSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFe1cSDK;
    .locals 1

    .line 3
    sget-object v0, Lcom/appsflyer/internal/AFe1cSDK;->valueOf:[Lcom/appsflyer/internal/AFe1cSDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFe1cSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFe1cSDK;

    return-object v0
.end method
