.class public final Lcom/appsflyer/internal/AFh1bSDK$AFa1tSDK;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFh1bSDK;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private synthetic valueOf:Lcom/appsflyer/internal/AFh1bSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFh1bSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFh1bSDK$AFa1tSDK;->valueOf:Lcom/appsflyer/internal/AFh1bSDK;

    .line 17
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1bSDK$AFa1tSDK;->valueOf:Lcom/appsflyer/internal/AFh1bSDK;

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFh1bSDK;->values(Lcom/appsflyer/internal/AFh1bSDK;Landroid/net/Network;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1bSDK$AFa1tSDK;->valueOf:Lcom/appsflyer/internal/AFh1bSDK;

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFh1bSDK;->values(Lcom/appsflyer/internal/AFh1bSDK;Landroid/net/Network;)V

    .line 24
    iget-object p1, p0, Lcom/appsflyer/internal/AFh1bSDK$AFa1tSDK;->valueOf:Lcom/appsflyer/internal/AFh1bSDK;

    const-string v0, "NetworkLost"

    invoke-static {p1, v0}, Lcom/appsflyer/internal/AFh1bSDK;->valueOf(Lcom/appsflyer/internal/AFh1bSDK;Ljava/lang/String;)V

    return-void
.end method
