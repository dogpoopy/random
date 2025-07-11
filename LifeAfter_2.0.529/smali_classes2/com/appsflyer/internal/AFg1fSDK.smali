.class public final enum Lcom/appsflyer/internal/AFg1fSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFg1fSDK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFg1fSDK;

.field private static final synthetic AFKeystoreWrapper:[Lcom/appsflyer/internal/AFg1fSDK;

.field public static final enum valueOf:Lcom/appsflyer/internal/AFg1fSDK;

.field public static final enum values:Lcom/appsflyer/internal/AFg1fSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/appsflyer/internal/AFg1fSDK;

    const/4 v1, 0x0

    const-string v2, "application"

    invoke-direct {v0, v2, v1}, Lcom/appsflyer/internal/AFg1fSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFg1fSDK;->values:Lcom/appsflyer/internal/AFg1fSDK;

    .line 5
    new-instance v0, Lcom/appsflyer/internal/AFg1fSDK;

    const/4 v2, 0x1

    const-string v3, "activity"

    invoke-direct {v0, v3, v2}, Lcom/appsflyer/internal/AFg1fSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFg1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1fSDK;

    .line 6
    new-instance v0, Lcom/appsflyer/internal/AFg1fSDK;

    const/4 v3, 0x2

    const-string v4, "other"

    invoke-direct {v0, v4, v3}, Lcom/appsflyer/internal/AFg1fSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFg1fSDK;->valueOf:Lcom/appsflyer/internal/AFg1fSDK;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appsflyer/internal/AFg1fSDK;

    .line 3
    sget-object v4, Lcom/appsflyer/internal/AFg1fSDK;->values:Lcom/appsflyer/internal/AFg1fSDK;

    aput-object v4, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFg1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1fSDK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFg1fSDK;->valueOf:Lcom/appsflyer/internal/AFg1fSDK;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appsflyer/internal/AFg1fSDK;->AFKeystoreWrapper:[Lcom/appsflyer/internal/AFg1fSDK;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFg1fSDK;
    .locals 1

    .line 3
    const-class v0, Lcom/appsflyer/internal/AFg1fSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFg1fSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFg1fSDK;
    .locals 1

    .line 3
    sget-object v0, Lcom/appsflyer/internal/AFg1fSDK;->AFKeystoreWrapper:[Lcom/appsflyer/internal/AFg1fSDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFg1fSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFg1fSDK;

    return-object v0
.end method
