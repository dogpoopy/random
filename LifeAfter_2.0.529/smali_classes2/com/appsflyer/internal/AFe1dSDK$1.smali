.class final Lcom/appsflyer/internal/AFe1dSDK$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFe1dSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/AFe1fSDK;

.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1dSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1dSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1dSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFe1dSDK$1;->AFInAppEventType:Lcom/appsflyer/internal/AFe1fSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1dSDK;

    .line 1036
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1dSDK;->AFKeystoreWrapper:Ljava/util/List;

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFe1eSDK;

    .line 210
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1dSDK$1;->AFInAppEventType:Lcom/appsflyer/internal/AFe1fSDK;

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFe1eSDK;->values(Lcom/appsflyer/internal/AFe1fSDK;)V

    goto :goto_0

    :cond_0
    return-void
.end method
