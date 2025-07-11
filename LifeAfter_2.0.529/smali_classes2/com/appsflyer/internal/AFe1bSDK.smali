.class public final enum Lcom/appsflyer/internal/AFe1bSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFe1bSDK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum AFLogger:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum afDebugLog:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum afInfoLog:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum afRDLog:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum afVerboseLog:Lcom/appsflyer/internal/AFe1bSDK;

.field private static final synthetic afWarnLog:[Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum d:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum e:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum force:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum i:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum registerClient:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum unregisterClient:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum v:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum valueOf:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum values:Lcom/appsflyer/internal/AFe1bSDK;

.field public static final enum w:Lcom/appsflyer/internal/AFe1bSDK;


# instance fields
.field public final afErrorLog:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RC_CDN"

    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->values:Lcom/appsflyer/internal/AFe1bSDK;

    .line 11
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v3, 0x2

    const-string v4, "LOAD_CACHE"

    invoke-direct {v0, v4, v2, v3}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1bSDK;

    .line 12
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const-string v4, "CACHED_EVENT"

    invoke-direct {v0, v4, v3, v3}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->valueOf:Lcom/appsflyer/internal/AFe1bSDK;

    .line 13
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v4, 0x3

    const-string v5, "CONVERSION"

    invoke-direct {v0, v5, v4, v3}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    .line 14
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v5, 0x4

    const-string v6, "ONELINK"

    invoke-direct {v0, v6, v5, v3}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    .line 15
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v6, 0x5

    const-string v7, "DLSDK"

    invoke-direct {v0, v7, v6, v3}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->unregisterClient:Lcom/appsflyer/internal/AFe1bSDK;

    .line 16
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v7, 0x6

    const-string v8, "RESOLVE_ESP"

    invoke-direct {v0, v8, v7, v3}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->AFLogger:Lcom/appsflyer/internal/AFe1bSDK;

    .line 17
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v8, 0x7

    const-string v9, "ATTR"

    invoke-direct {v0, v9, v8, v3}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->d:Lcom/appsflyer/internal/AFe1bSDK;

    .line 19
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/16 v9, 0x8

    const-string v10, "GCDSDK"

    invoke-direct {v0, v10, v9, v4}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->e:Lcom/appsflyer/internal/AFe1bSDK;

    .line 20
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/16 v10, 0x9

    const-string v11, "REGISTER"

    invoke-direct {v0, v11, v10, v5}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->registerClient:Lcom/appsflyer/internal/AFe1bSDK;

    .line 21
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/16 v11, 0xa

    const-string v12, "LAUNCH"

    invoke-direct {v0, v12, v11, v5}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->w:Lcom/appsflyer/internal/AFe1bSDK;

    .line 22
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/16 v12, 0xb

    const-string v13, "INAPP"

    invoke-direct {v0, v13, v12, v5}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->force:Lcom/appsflyer/internal/AFe1bSDK;

    .line 23
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/16 v13, 0xc

    const-string v14, "PURCHASE_VALIDATE"

    invoke-direct {v0, v14, v13, v5}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->afInfoLog:Lcom/appsflyer/internal/AFe1bSDK;

    .line 24
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/16 v14, 0xd

    const-string v15, "SDK_SERVICES"

    invoke-direct {v0, v15, v14, v5}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->v:Lcom/appsflyer/internal/AFe1bSDK;

    .line 25
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const/16 v15, 0xe

    const-string v14, "IMPRESSIONS"

    invoke-direct {v0, v14, v15, v5}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->i:Lcom/appsflyer/internal/AFe1bSDK;

    .line 28
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const-string v14, "ARS_VALIDATE"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15, v5}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->afRDLog:Lcom/appsflyer/internal/AFe1bSDK;

    .line 29
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const-string v14, "ADREVENUE"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15, v5}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->afVerboseLog:Lcom/appsflyer/internal/AFe1bSDK;

    .line 30
    new-instance v0, Lcom/appsflyer/internal/AFe1bSDK;

    const-string v14, "AD_IMPRESSION"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15, v5}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->afDebugLog:Lcom/appsflyer/internal/AFe1bSDK;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/appsflyer/internal/AFe1bSDK;

    .line 9
    sget-object v14, Lcom/appsflyer/internal/AFe1bSDK;->values:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v14, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->valueOf:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->unregisterClient:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->AFLogger:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v1, v0, v7

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->d:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v1, v0, v8

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->e:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v1, v0, v9

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->registerClient:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v1, v0, v10

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->w:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v1, v0, v11

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->force:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v1, v0, v12

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->afInfoLog:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v1, v0, v13

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->v:Lcom/appsflyer/internal/AFe1bSDK;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->i:Lcom/appsflyer/internal/AFe1bSDK;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->afRDLog:Lcom/appsflyer/internal/AFe1bSDK;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->afVerboseLog:Lcom/appsflyer/internal/AFe1bSDK;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->afDebugLog:Lcom/appsflyer/internal/AFe1bSDK;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/appsflyer/internal/AFe1bSDK;->afWarnLog:[Lcom/appsflyer/internal/AFe1bSDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/appsflyer/internal/AFe1bSDK;->afErrorLog:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1bSDK;
    .locals 1

    .line 9
    const-class v0, Lcom/appsflyer/internal/AFe1bSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFe1bSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFe1bSDK;
    .locals 1

    .line 9
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->afWarnLog:[Lcom/appsflyer/internal/AFe1bSDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFe1bSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFe1bSDK;

    return-object v0
.end method
