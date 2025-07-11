.class Lcom/netease/download/storage/StorageToFileProxy$1;
.super Ljava/lang/Object;
.source "StorageToFileProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/storage/StorageToFileProxy;->start()V
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

    .line 129
    iput-object p1, p0, Lcom/netease/download/storage/StorageToFileProxy$1;->this$0:Lcom/netease/download/storage/StorageToFileProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 135
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy$1;->this$0:Lcom/netease/download/storage/StorageToFileProxy;

    invoke-static {v0}, Lcom/netease/download/storage/StorageToFileProxy;->access$000(Lcom/netease/download/storage/StorageToFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "finish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 137
    :try_start_1
    iget-object v1, p0, Lcom/netease/download/storage/StorageToFileProxy$1;->this$0:Lcom/netease/download/storage/StorageToFileProxy;

    invoke-static {v1}, Lcom/netease/download/storage/StorageToFileProxy;->access$100(Lcom/netease/download/storage/StorageToFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy$1;->this$0:Lcom/netease/download/storage/StorageToFileProxy;

    invoke-static {v0}, Lcom/netease/download/storage/StorageToFileProxy;->access$100(Lcom/netease/download/storage/StorageToFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-void
.end method
