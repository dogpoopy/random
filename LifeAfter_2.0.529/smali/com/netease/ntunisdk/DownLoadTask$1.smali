.class Lcom/netease/ntunisdk/DownLoadTask$1;
.super Ljava/lang/Object;
.source "DownLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/DownLoadTask;->download(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/netease/ntunisdk/DownLoadTask$callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/netease/ntunisdk/DownLoadTask$callback;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;Lcom/netease/ntunisdk/DownLoadTask$callback;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/netease/ntunisdk/DownLoadTask$1;->val$items:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/netease/ntunisdk/DownLoadTask$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/ntunisdk/DownLoadTask$1;->val$callback:Lcom/netease/ntunisdk/DownLoadTask$callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/netease/ntunisdk/DownLoadTask$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;

    .line 32
    sget-object v3, Lcom/netease/ntunisdk/DownLoadTask$2;->$SwitchMap$com$netease$ntunisdk$DownLoadTask$Type:[I

    iget-object v4, v2, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->type:Lcom/netease/ntunisdk/DownLoadTask$Type;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/DownLoadTask$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v3, p0, Lcom/netease/ntunisdk/DownLoadTask$1;->val$activity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/DownLoadTask;->access$100(Landroid/app/Activity;Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->path:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_1
    iget-object v3, p0, Lcom/netease/ntunisdk/DownLoadTask$1;->val$activity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/DownLoadTask;->access$000(Landroid/app/Activity;Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->path:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/DownLoadTask$1;->val$callback:Lcom/netease/ntunisdk/DownLoadTask$callback;

    if-eqz v1, :cond_3

    .line 43
    invoke-interface {v1, v0}, Lcom/netease/ntunisdk/DownLoadTask$callback;->onFinish(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method
