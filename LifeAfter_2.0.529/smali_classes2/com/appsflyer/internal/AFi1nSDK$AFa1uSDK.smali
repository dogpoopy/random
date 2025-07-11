.class public final enum Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFi1nSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AFa1uSDK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

.field public static final enum valueOf:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

.field private static final synthetic values:[Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    const/4 v1, 0x0

    const-string v2, "NOT_STARTED"

    invoke-direct {v0, v2, v1}, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->valueOf:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    new-instance v0, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    const/4 v2, 0x1

    const-string v3, "STARTED"

    invoke-direct {v0, v3, v2}, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    new-instance v0, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    const/4 v3, 0x2

    const-string v4, "FINISHED"

    invoke-direct {v0, v4, v3}, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    .line 63
    sget-object v4, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->valueOf:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    aput-object v4, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->values:[Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;
    .locals 1

    .line 63
    const-class v0, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;
    .locals 1

    .line 63
    sget-object v0, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->values:[Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    return-object v0
.end method
