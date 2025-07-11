.class public final enum Lcom/appsflyer/deeplink/DeepLinkResult$Status;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/deeplink/DeepLinkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/deeplink/DeepLinkResult$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic AFInAppEventParameterName:[Lcom/appsflyer/deeplink/DeepLinkResult$Status;

.field public static final enum ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

.field public static final enum FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

.field public static final enum NOT_FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    const/4 v1, 0x0

    const-string v2, "FOUND"

    invoke-direct {v0, v2, v1}, Lcom/appsflyer/deeplink/DeepLinkResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    const/4 v2, 0x1

    const-string v3, "NOT_FOUND"

    invoke-direct {v0, v3, v2}, Lcom/appsflyer/deeplink/DeepLinkResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->NOT_FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3}, Lcom/appsflyer/deeplink/DeepLinkResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    .line 58
    sget-object v4, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    aput-object v4, v0, v1

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->NOT_FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->AFInAppEventParameterName:[Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/deeplink/DeepLinkResult$Status;
    .locals 1

    .line 58
    const-class v0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/deeplink/DeepLinkResult$Status;
    .locals 1

    .line 58
    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->AFInAppEventParameterName:[Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    invoke-virtual {v0}, [Lcom/appsflyer/deeplink/DeepLinkResult$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    return-object v0
.end method
