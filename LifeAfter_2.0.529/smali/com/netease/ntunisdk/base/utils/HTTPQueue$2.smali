.class Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;
.super Ljava/lang/Object;
.source "HTTPQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/HTTPQueue;->checkResendDelay(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

.field final synthetic val$newUrl:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->val$newUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 345
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$100(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resend_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->val$tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_delay"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$100(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->val$tag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ","

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 349
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 350
    iget-object v5, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {v5}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$100(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "item_"

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 352
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v5

    .line 354
    :try_start_0
    invoke-virtual {v5, v3}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->unmarshal(Ljava/lang/String;)V

    .line 355
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->val$newUrl:Ljava/lang/String;

    iput-object v3, v5, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 356
    iget-object v3, v5, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$200(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "checkResendDelay, item.method empty, ship"

    invoke-static {v3, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v3, "POST"

    .line 359
    iget-object v7, v5, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v5}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$300(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v5}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$400(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v5}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$400(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 360
    :cond_1
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$200(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "checkResendDelay, item null, ship"

    invoke-static {v3, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$100(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 363
    :cond_2
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$200(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkResendDelay, itemId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {v5}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->modifySecureHeader(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    .line 365
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-virtual {v3, v5}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 369
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
