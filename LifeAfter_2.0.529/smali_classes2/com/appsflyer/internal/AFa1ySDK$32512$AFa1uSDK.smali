.class public final enum Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFa1ySDK$32512;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AFa1uSDK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

.field private static final synthetic valueOf:[Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

.field public static final enum values:Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;


# instance fields
.field public AFInAppEventType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 293
    new-instance v0, Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

    const/4 v1, 0x0

    const-string v2, "XPOSED"

    const-string v3, "xps"

    invoke-direct {v0, v2, v1, v3}, Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

    new-instance v0, Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

    const/4 v2, 0x1

    const-string v3, "FRIDA"

    const-string v4, "frd"

    invoke-direct {v0, v3, v2, v4}, Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;->values:Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

    .line 292
    sget-object v3, Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

    aput-object v3, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;->values:Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

    aput-object v1, v0, v2

    sput-object v0, Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;->valueOf:[Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

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

    .line 297
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 298
    iput-object p3, p0, Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;->AFInAppEventType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;
    .locals 1

    .line 292
    const-class v0, Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;
    .locals 1

    .line 292
    sget-object v0, Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;->valueOf:[Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFa1ySDK$32512$AFa1uSDK;

    return-object v0
.end method
