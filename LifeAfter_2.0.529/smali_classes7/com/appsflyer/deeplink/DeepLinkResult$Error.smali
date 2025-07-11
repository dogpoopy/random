.class public final enum Lcom/appsflyer/deeplink/DeepLinkResult$Error;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/deeplink/DeepLinkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/deeplink/DeepLinkResult$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic AFInAppEventParameterName:[Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum HTTP_STATUS_CODE:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 63
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const/4 v1, 0x0

    const-string v2, "TIMEOUT"

    invoke-direct {v0, v2, v1}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const/4 v2, 0x1

    const-string v3, "NETWORK"

    invoke-direct {v0, v3, v2}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const/4 v3, 0x2

    const-string v4, "HTTP_STATUS_CODE"

    invoke-direct {v0, v4, v3}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->HTTP_STATUS_CODE:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const/4 v4, 0x3

    const-string v5, "UNEXPECTED"

    invoke-direct {v0, v5, v4}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const/4 v5, 0x4

    const-string v6, "DEVELOPER_ERROR"

    invoke-direct {v0, v6, v5}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    .line 62
    sget-object v6, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    aput-object v6, v0, v1

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->HTTP_STATUS_CODE:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    aput-object v1, v0, v5

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->AFInAppEventParameterName:[Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    .locals 1

    .line 62
    const-class v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    .locals 1

    .line 62
    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->AFInAppEventParameterName:[Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {v0}, [Lcom/appsflyer/deeplink/DeepLinkResult$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-object v0
.end method
