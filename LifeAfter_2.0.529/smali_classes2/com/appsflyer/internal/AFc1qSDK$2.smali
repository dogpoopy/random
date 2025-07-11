.class final Lcom/appsflyer/internal/AFc1qSDK$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFc1qSDK;->unregisterClient()Lcom/appsflyer/deeplink/DeepLinkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/appsflyer/deeplink/DeepLinkResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFc1qSDK;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1qSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFc1qSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFc1qSDK;)V

    .line 1083
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFc1qSDK;->valueOf(Lcom/appsflyer/internal/AFc1qSDK;)V

    .line 1084
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFc1qSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFc1qSDK;)Lcom/appsflyer/deeplink/DeepLinkResult;

    move-result-object v0

    return-object v0
.end method
