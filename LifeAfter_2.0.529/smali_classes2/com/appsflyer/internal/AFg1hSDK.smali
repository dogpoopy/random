.class public final enum Lcom/appsflyer/internal/AFg1hSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFg1hSDK;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u001d\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0002X\u0007\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u0005j\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001f"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFg1hSDK;",
        "",
        "",
        "valueOf",
        "Ljava/lang/String;",
        "values",
        "p0",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "AFKeystoreWrapper",
        "AFInAppEventParameterName",
        "AFInAppEventType",
        "d",
        "AFLogger",
        "e",
        "registerClient",
        "unregisterClient",
        "afRDLog",
        "v",
        "w",
        "afVerboseLog",
        "getLevel",
        "afErrorLogForExcManagerOnly",
        "afLogForce",
        "force",
        "AFLogger$LogLevel",
        "AFVersionDeclaration",
        "i",
        "afInfoLog",
        "afDebugLog",
        "afWarnLog",
        "afErrorLog"
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
.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum AFLogger$LogLevel:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum AFVersionDeclaration:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum afDebugLog:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum afErrorLog:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum afLogForce:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum afRDLog:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum afVerboseLog:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum afWarnLog:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum d:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum e:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum force:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum getLevel:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum i:Lcom/appsflyer/internal/AFg1hSDK;

.field private static final synthetic onInstallConversionFailureNative:[Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum registerClient:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum unregisterClient:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum v:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum values:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum w:Lcom/appsflyer/internal/AFg1hSDK;


# instance fields
.field final valueOf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v1, 0x0

    const-string v2, "OTHER"

    const-string v3, "Other"

    invoke-direct {v0, v2, v1, v3}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1hSDK;

    .line 9
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v2, 0x1

    const-string v3, "HTTP_CLIENT"

    const-string v4, "HTTP Client"

    invoke-direct {v0, v3, v2, v4}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1hSDK;

    .line 10
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v3, 0x2

    const-string v4, "QUEUE"

    const-string v5, "Queue"

    invoke-direct {v0, v4, v3, v5}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1hSDK;

    .line 11
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v4, 0x3

    const-string v5, "CACHE"

    const-string v6, "Cache"

    invoke-direct {v0, v5, v4, v6}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->values:Lcom/appsflyer/internal/AFg1hSDK;

    .line 12
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v5, 0x4

    const-string v6, "REMOTE_CONTROL"

    const-string v7, "CFG"

    invoke-direct {v0, v6, v5, v7}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    .line 13
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v6, 0x5

    const-string v7, "DDL"

    invoke-direct {v0, v7, v6, v7}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    .line 14
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v7, 0x6

    const-string v8, "REFERRER"

    const-string v9, "Referrer"

    invoke-direct {v0, v8, v7, v9}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->e:Lcom/appsflyer/internal/AFg1hSDK;

    .line 15
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v8, 0x7

    const-string v9, "CROSS_PROMOTION"

    const-string v10, "Cross Promotion"

    invoke-direct {v0, v9, v8, v10}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->registerClient:Lcom/appsflyer/internal/AFg1hSDK;

    .line 16
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v9, 0x8

    const-string v10, "EXCEPTION_MANAGER"

    const-string v11, "Exception Manager"

    invoke-direct {v0, v10, v9, v11}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1hSDK;

    .line 17
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v10, 0x9

    const-string v11, "ATTRIBUTION"

    const-string v12, "Attribution"

    invoke-direct {v0, v11, v10, v12}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afRDLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 18
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v11, 0xa

    const-string v12, "RD"

    invoke-direct {v0, v12, v11, v12}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->v:Lcom/appsflyer/internal/AFg1hSDK;

    .line 19
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v12, 0xb

    const-string v13, "ENGAGEMENT"

    const-string v14, "Engagement"

    invoke-direct {v0, v13, v12, v14}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->w:Lcom/appsflyer/internal/AFg1hSDK;

    .line 20
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v13, 0xc

    const-string v14, "ANTI_FRAUD"

    const-string v15, "Anti Fraud"

    invoke-direct {v0, v14, v13, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afVerboseLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 21
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v14, "PUBLIC_API"

    const/16 v15, 0xd

    const-string v13, "Public API"

    invoke-direct {v0, v14, v15, v13}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->getLevel:Lcom/appsflyer/internal/AFg1hSDK;

    .line 22
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v13, "AD_REVENUE"

    const/16 v14, 0xe

    const-string v15, "Ad Revenue"

    invoke-direct {v0, v13, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1hSDK;

    .line 23
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v13, "SDK_SETTERS"

    const/16 v14, 0xf

    const-string v15, "Setter"

    invoke-direct {v0, v13, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afLogForce:Lcom/appsflyer/internal/AFg1hSDK;

    .line 24
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v13, "PREDICT"

    const/16 v14, 0x10

    const-string v15, "Predict"

    invoke-direct {v0, v13, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->force:Lcom/appsflyer/internal/AFg1hSDK;

    .line 25
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v13, "DEVICE_DATA"

    const/16 v14, 0x11

    const-string v15, "Device Data"

    invoke-direct {v0, v13, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFg1hSDK;

    .line 26
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v13, "SECURITY"

    const/16 v14, 0x12

    const-string v15, "Security"

    invoke-direct {v0, v13, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFg1hSDK;

    .line 27
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v13, "GENERAL"

    const/16 v14, 0x13

    const-string v15, "General"

    invoke-direct {v0, v13, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    .line 28
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v13, "PREINSTALL"

    const/16 v14, 0x14

    const-string v15, "Preinstall"

    invoke-direct {v0, v13, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 29
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v13, "UNINSTALL"

    const/16 v14, 0x15

    const-string v15, "Uninstall"

    invoke-direct {v0, v13, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 30
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v13, "PURCHASE_VALIDATION"

    const/16 v14, 0x16

    const-string v15, "Purchase Validation"

    invoke-direct {v0, v13, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 31
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v13, "DMA"

    const/16 v14, 0x17

    const-string v15, "DMA"

    invoke-direct {v0, v13, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/appsflyer/internal/AFg1hSDK;

    .line 1000
    sget-object v13, Lcom/appsflyer/internal/AFg1hSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v13, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->values:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->e:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v1, v0, v7

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->registerClient:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v1, v0, v8

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v1, v0, v9

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afRDLog:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v1, v0, v10

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->v:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v1, v0, v11

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->w:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v1, v0, v12

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afVerboseLog:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->getLevel:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afLogForce:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->force:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 31
    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->onInstallConversionFailureNative:[Lcom/appsflyer/internal/AFg1hSDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appsflyer/internal/AFg1hSDK;->valueOf:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFg1hSDK;
    .locals 1

    const-class v0, Lcom/appsflyer/internal/AFg1hSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFg1hSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFg1hSDK;
    .locals 1

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->onInstallConversionFailureNative:[Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFg1hSDK;

    return-object v0
.end method
