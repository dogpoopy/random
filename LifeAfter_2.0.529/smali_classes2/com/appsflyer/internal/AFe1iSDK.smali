.class public final enum Lcom/appsflyer/internal/AFe1iSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFe1iSDK;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0002X\u0007\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFe1iSDK;",
        "",
        "",
        "AFInAppEventParameterName",
        "Ljava/lang/String;",
        "p0",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "AFInAppEventType",
        "AFKeystoreWrapper",
        "values"
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
.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFe1iSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1iSDK;

.field private static final synthetic valueOf:[Lcom/appsflyer/internal/AFe1iSDK;

.field public static final enum values:Lcom/appsflyer/internal/AFe1iSDK;


# instance fields
.field public final AFInAppEventParameterName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 22
    new-instance v0, Lcom/appsflyer/internal/AFe1iSDK;

    const/4 v1, 0x0

    const-string v2, "API"

    const-string v3, "api"

    invoke-direct {v0, v2, v1, v3}, Lcom/appsflyer/internal/AFe1iSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1iSDK;

    .line 23
    new-instance v0, Lcom/appsflyer/internal/AFe1iSDK;

    const/4 v2, 0x1

    const-string v3, "RC"

    const-string v4, "rc"

    invoke-direct {v0, v3, v2, v4}, Lcom/appsflyer/internal/AFe1iSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFe1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1iSDK;

    .line 24
    new-instance v0, Lcom/appsflyer/internal/AFe1iSDK;

    const/4 v3, 0x2

    const-string v4, "DEFAULT"

    const-string v5, ""

    invoke-direct {v0, v4, v3, v5}, Lcom/appsflyer/internal/AFe1iSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFe1iSDK;->values:Lcom/appsflyer/internal/AFe1iSDK;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appsflyer/internal/AFe1iSDK;

    .line 1000
    sget-object v4, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1iSDK;

    aput-object v4, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFe1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1iSDK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFe1iSDK;->values:Lcom/appsflyer/internal/AFe1iSDK;

    aput-object v1, v0, v3

    .line 24
    sput-object v0, Lcom/appsflyer/internal/AFe1iSDK;->valueOf:[Lcom/appsflyer/internal/AFe1iSDK;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventParameterName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1iSDK;
    .locals 1

    const-class v0, Lcom/appsflyer/internal/AFe1iSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFe1iSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFe1iSDK;
    .locals 1

    sget-object v0, Lcom/appsflyer/internal/AFe1iSDK;->valueOf:[Lcom/appsflyer/internal/AFe1iSDK;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFe1iSDK;

    return-object v0
.end method
