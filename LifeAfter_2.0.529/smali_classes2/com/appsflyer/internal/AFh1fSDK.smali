.class public final enum Lcom/appsflyer/internal/AFh1fSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFh1fSDK;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic AFInAppEventParameterName:[Lcom/appsflyer/internal/AFh1fSDK;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFh1fSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFh1fSDK;

.field public static final enum valueOf:Lcom/appsflyer/internal/AFh1fSDK;

.field public static final enum values:Lcom/appsflyer/internal/AFh1fSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/appsflyer/internal/AFh1fSDK;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/appsflyer/internal/AFh1fSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFh1fSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFh1fSDK;

    new-instance v0, Lcom/appsflyer/internal/AFh1fSDK;

    const/4 v2, 0x1

    const-string v3, "FAILURE"

    invoke-direct {v0, v3, v2}, Lcom/appsflyer/internal/AFh1fSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFh1fSDK;->values:Lcom/appsflyer/internal/AFh1fSDK;

    new-instance v0, Lcom/appsflyer/internal/AFh1fSDK;

    const/4 v3, 0x2

    const-string v4, "NA"

    invoke-direct {v0, v4, v3}, Lcom/appsflyer/internal/AFh1fSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFh1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1fSDK;

    new-instance v0, Lcom/appsflyer/internal/AFh1fSDK;

    const/4 v4, 0x3

    const-string v5, "INTERNAL_ERROR"

    invoke-direct {v0, v5, v4}, Lcom/appsflyer/internal/AFh1fSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFh1fSDK;->valueOf:Lcom/appsflyer/internal/AFh1fSDK;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/appsflyer/internal/AFh1fSDK;

    .line 7
    sget-object v5, Lcom/appsflyer/internal/AFh1fSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFh1fSDK;

    aput-object v5, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFh1fSDK;->values:Lcom/appsflyer/internal/AFh1fSDK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFh1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1fSDK;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/AFh1fSDK;->valueOf:Lcom/appsflyer/internal/AFh1fSDK;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appsflyer/internal/AFh1fSDK;->AFInAppEventParameterName:[Lcom/appsflyer/internal/AFh1fSDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFh1fSDK;
    .locals 1

    .line 7
    const-class v0, Lcom/appsflyer/internal/AFh1fSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFh1fSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFh1fSDK;
    .locals 1

    .line 7
    sget-object v0, Lcom/appsflyer/internal/AFh1fSDK;->AFInAppEventParameterName:[Lcom/appsflyer/internal/AFh1fSDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFh1fSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFh1fSDK;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 13
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
