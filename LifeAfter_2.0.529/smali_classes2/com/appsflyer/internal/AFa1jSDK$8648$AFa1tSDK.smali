.class public final enum Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFa1jSDK$8648;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AFa1tSDK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

.field private static final synthetic e:[Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

.field public static final enum registerClient:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

.field public static final enum valueOf:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

.field public static final enum values:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 404
    new-instance v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    const/4 v1, 0x0

    const-string v2, "EMPTY_ARRAY"

    invoke-direct {v0, v2, v1}, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    .line 410
    new-instance v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    const/4 v2, 0x1

    const-string v3, "NONEMPTY_ARRAY"

    invoke-direct {v0, v3, v2}, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->valueOf:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    .line 416
    new-instance v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    const/4 v3, 0x2

    const-string v4, "EMPTY_OBJECT"

    invoke-direct {v0, v4, v3}, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->values:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    .line 422
    new-instance v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    const/4 v4, 0x3

    const-string v5, "DANGLING_KEY"

    invoke-direct {v0, v5, v4}, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    .line 428
    new-instance v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    const/4 v5, 0x4

    const-string v6, "NONEMPTY_OBJECT"

    invoke-direct {v0, v6, v5}, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    .line 434
    new-instance v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    const/4 v6, 0x5

    const-string v7, "NULL"

    invoke-direct {v0, v7, v6}, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->registerClient:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    .line 398
    sget-object v7, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    aput-object v7, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->valueOf:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->values:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->registerClient:Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    aput-object v1, v0, v6

    sput-object v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->e:[Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;
    .locals 1

    .line 398
    const-class v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;
    .locals 1

    .line 398
    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->e:[Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFa1jSDK$8648$AFa1tSDK;

    return-object v0
.end method
