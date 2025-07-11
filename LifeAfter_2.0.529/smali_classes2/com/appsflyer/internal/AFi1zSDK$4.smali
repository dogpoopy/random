.class final Lcom/appsflyer/internal/AFi1zSDK$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFi1zSDK;->values()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/net/Network;",
        "Landroid/net/NetworkInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0010\u0001\u001a\u0006*\u00020\u00000\u0000H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroid/net/Network;",
        "p0",
        "Landroid/net/NetworkInfo;",
        "values",
        "(Landroid/net/Network;)Landroid/net/NetworkInfo;"
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
.field private synthetic valueOf:Lcom/appsflyer/internal/AFi1zSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFi1zSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFi1zSDK$4;->valueOf:Lcom/appsflyer/internal/AFi1zSDK;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Landroid/net/Network;

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFi1zSDK$4;->values(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    return-object p1
.end method

.method public final values(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1zSDK$4;->valueOf:Lcom/appsflyer/internal/AFi1zSDK;

    .line 1011
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1cSDK;->AFInAppEventType:Landroid/net/ConnectivityManager;

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    return-object p1
.end method
