.class final enum Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFi1iSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AFa1ySDK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic AFInAppEventParameterName:[Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

.field public static final enum valueOf:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

.field public static final enum values:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 218
    new-instance v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->values:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    new-instance v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    const/4 v2, 0x1

    const-string v3, "FIRST"

    invoke-direct {v0, v3, v2}, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    new-instance v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    const/4 v3, 0x2

    const-string v4, "ALL"

    invoke-direct {v0, v4, v3}, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->valueOf:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    .line 217
    sget-object v4, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->values:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    aput-object v4, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->valueOf:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->AFInAppEventParameterName:[Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;
    .locals 1

    .line 217
    const-class v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;
    .locals 1

    .line 217
    sget-object v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->AFInAppEventParameterName:[Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    return-object v0
.end method
