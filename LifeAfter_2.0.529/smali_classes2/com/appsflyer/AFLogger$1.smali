.class final Lcom/appsflyer/AFLogger$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/AFLogger;->force(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/appsflyer/internal/AFg1mSDK;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFg1mSDK;",
        "p0",
        "",
        "AFInAppEventParameterName",
        "(Lcom/appsflyer/internal/AFg1mSDK;)V"
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
.field private synthetic $AFInAppEventType:Lcom/appsflyer/internal/AFg1hSDK;

.field private synthetic $AFKeystoreWrapper:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/AFLogger$1;->$AFInAppEventType:Lcom/appsflyer/internal/AFg1hSDK;

    iput-object p2, p0, Lcom/appsflyer/AFLogger$1;->$AFKeystoreWrapper:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Lcom/appsflyer/internal/AFg1mSDK;)V
    .locals 2

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/appsflyer/AFLogger$1;->$AFInAppEventType:Lcom/appsflyer/internal/AFg1hSDK;

    iget-object v1, p0, Lcom/appsflyer/AFLogger$1;->$AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/internal/AFg1mSDK;->force(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 79
    check-cast p1, Lcom/appsflyer/internal/AFg1mSDK;

    invoke-virtual {p0, p1}, Lcom/appsflyer/AFLogger$1;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFg1mSDK;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
