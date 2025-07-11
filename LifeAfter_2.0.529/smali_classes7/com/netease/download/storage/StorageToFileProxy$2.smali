.class Lcom/netease/download/storage/StorageToFileProxy$2;
.super Ljava/lang/Object;
.source "StorageToFileProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/storage/StorageToFileProxy;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/storage/StorageToFileProxy;


# direct methods
.method constructor <init>(Lcom/netease/download/storage/StorageToFileProxy;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/netease/download/storage/StorageToFileProxy$2;->this$0:Lcom/netease/download/storage/StorageToFileProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xbb8

    .line 164
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v0, "StorageToFileProxy"

    const-string v1, "\u4e0b\u8f7d\u8be6\u60c5\uff0c\u53d1\u8d77\u7ed3\u675f\u547d\u4ee4"

    .line 170
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :try_start_1
    iget-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy$2;->this$0:Lcom/netease/download/storage/StorageToFileProxy;

    invoke-static {v0}, Lcom/netease/download/storage/StorageToFileProxy;->access$000(Lcom/netease/download/storage/StorageToFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy$2;->this$0:Lcom/netease/download/storage/StorageToFileProxy;

    invoke-static {v0}, Lcom/netease/download/storage/StorageToFileProxy;->access$000(Lcom/netease/download/storage/StorageToFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-string v1, "finish"

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method
