.class final enum Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFi1iSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AFa1vSDK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;",
        ">;"
    }
.end annotation


# static fields
.field private static enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

.field private static enum AFInAppEventType:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

.field private static enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

.field private static final synthetic e:[Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

.field private static enum valueOf:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

.field public static final enum values:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;


# instance fields
.field private unregisterClient:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 225
    new-instance v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->valueOf:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    new-instance v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    const/4 v2, 0x1

    const-string v3, "ACCELEROMETER"

    invoke-direct {v0, v3, v2, v2}, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    new-instance v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    const/4 v3, 0x2

    const-string v4, "MAGNETOMETER"

    invoke-direct {v0, v4, v3, v3}, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->values:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    new-instance v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    const/4 v4, 0x3

    const-string v5, "RESERVED"

    invoke-direct {v0, v5, v4, v4}, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    new-instance v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    const/4 v5, 0x4

    const-string v6, "GYROSCOPE"

    invoke-direct {v0, v6, v5, v5}, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    .line 224
    sget-object v6, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->valueOf:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    aput-object v6, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->values:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    aput-object v1, v0, v5

    sput-object v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->e:[Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 230
    iput p3, p0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->unregisterClient:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;
    .locals 1

    .line 224
    const-class v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;
    .locals 1

    .line 224
    sget-object v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->e:[Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    return-object v0
.end method
