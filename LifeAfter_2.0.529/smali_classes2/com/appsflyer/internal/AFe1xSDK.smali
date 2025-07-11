.class public final Lcom/appsflyer/internal/AFe1xSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseBody:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1sSDK;

.field private final AFInAppEventType:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1kSDK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appsflyer/internal/AFe1kSDK<",
            "TResponseBody;>;"
        }
    .end annotation
.end field

.field public final valueOf:Lcom/appsflyer/internal/AFe1mSDK;

.field private final values:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFe1mSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFe1sSDK;Lcom/appsflyer/internal/AFe1kSDK;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1mSDK;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/appsflyer/internal/AFe1sSDK;",
            "Lcom/appsflyer/internal/AFe1kSDK<",
            "TResponseBody;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1xSDK;->AFInAppEventType:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1xSDK;->valueOf:Lcom/appsflyer/internal/AFe1mSDK;

    .line 26
    iput-object p2, p0, Lcom/appsflyer/internal/AFe1xSDK;->values:Ljava/util/concurrent/ExecutorService;

    .line 27
    iput-object p3, p0, Lcom/appsflyer/internal/AFe1xSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1sSDK;

    .line 28
    iput-object p4, p0, Lcom/appsflyer/internal/AFe1xSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1kSDK;

    return-void
.end method


# virtual methods
.method public final valueOf()Lcom/appsflyer/internal/AFe1pSDK;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appsflyer/internal/AFe1pSDK<",
            "TResponseBody;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1088
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1xSDK;->AFInAppEventType:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1xSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1sSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1xSDK;->valueOf:Lcom/appsflyer/internal/AFe1mSDK;

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFe1sSDK;->valueOf(Lcom/appsflyer/internal/AFe1mSDK;)Lcom/appsflyer/internal/AFe1pSDK;

    move-result-object v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1xSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1kSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1pSDK;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFe1kSDK;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2034
    new-instance v1, Lcom/appsflyer/internal/AFe1pSDK;

    iget v5, v0, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventType:I

    iget-boolean v6, v0, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventParameterName:Z

    iget-object v7, v0, Lcom/appsflyer/internal/AFe1pSDK;->valueOf:Ljava/util/Map;

    iget-object v8, v0, Lcom/appsflyer/internal/AFe1pSDK;->values:Lcom/appsflyer/internal/AFe1tSDK;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/Object;IZLjava/util/Map;Lcom/appsflyer/internal/AFe1tSDK;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "could not parse raw response - execute"

    .line 50
    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    new-instance v2, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/appsflyer/internal/AFe1pSDK;)V

    throw v2

    .line 1089
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Http call is already executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
