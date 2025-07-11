.class final Lcom/appsflyer/internal/AFf1dSDK$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFf1dSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFf1gSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "AFInAppEventType",
        "()Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1dSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFf1dSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1dSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1dSDK;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Ljava/lang/Boolean;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1dSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1dSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFf1dSDK;->values(Lcom/appsflyer/internal/AFf1dSDK;)Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v0

    const-string v1, "com.appsflyer.rc.staging"

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFd1rSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1dSDK$2;->AFInAppEventType()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
