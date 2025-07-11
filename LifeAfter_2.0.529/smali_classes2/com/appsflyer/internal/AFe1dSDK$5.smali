.class final Lcom/appsflyer/internal/AFe1dSDK$5;
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
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1dSDK;

.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

.field private synthetic valueOf:Lcom/appsflyer/internal/AFe1fSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;Lcom/appsflyer/internal/AFe1cSDK;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1dSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->valueOf:Lcom/appsflyer/internal/AFe1fSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 220
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "execution finished for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->valueOf:Lcom/appsflyer/internal/AFe1fSDK;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1dSDK;

    .line 1036
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1dSDK;->d:Ljava/util/Set;

    .line 221
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->valueOf:Lcom/appsflyer/internal/AFe1fSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1dSDK;

    .line 2036
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1dSDK;->AFKeystoreWrapper:Ljava/util/List;

    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFe1eSDK;

    .line 224
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->valueOf:Lcom/appsflyer/internal/AFe1fSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFe1eSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1fSDK;Lcom/appsflyer/internal/AFe1cSDK;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    sget-object v1, Lcom/appsflyer/internal/AFe1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1cSDK;

    if-ne v0, v1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1dSDK;

    .line 3036
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1dSDK;->AFInAppEventType:Ljava/util/Set;

    .line 228
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->valueOf:Lcom/appsflyer/internal/AFe1fSDK;

    .line 3245
    iget-object v1, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    .line 228
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1dSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFe1dSDK;->valueOf(Lcom/appsflyer/internal/AFe1dSDK;)V

    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->valueOf:Lcom/appsflyer/internal/AFe1fSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1fSDK;->values()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1dSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->valueOf:Lcom/appsflyer/internal/AFe1fSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFe1dSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFe1fSDK;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1dSDK;

    .line 4036
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1dSDK;->AFLogger:Ljava/util/NavigableSet;

    .line 238
    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1dSDK;

    .line 5036
    iget-object v1, v1, Lcom/appsflyer/internal/AFe1dSDK;->e:Ljava/util/List;

    .line 239
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->valueOf:Lcom/appsflyer/internal/AFe1fSDK;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1dSDK;

    .line 6036
    iget-object v1, v1, Lcom/appsflyer/internal/AFe1dSDK;->AFKeystoreWrapper:Ljava/util/List;

    .line 242
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFe1eSDK;

    .line 243
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->valueOf:Lcom/appsflyer/internal/AFe1fSDK;

    goto :goto_1

    .line 245
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1dSDK;

    .line 7036
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1dSDK;->AFInAppEventType:Ljava/util/Set;

    .line 249
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->valueOf:Lcom/appsflyer/internal/AFe1fSDK;

    .line 7245
    iget-object v1, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    .line 249
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1dSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFe1dSDK;->valueOf(Lcom/appsflyer/internal/AFe1dSDK;)V

    :cond_4
    return-void
.end method
