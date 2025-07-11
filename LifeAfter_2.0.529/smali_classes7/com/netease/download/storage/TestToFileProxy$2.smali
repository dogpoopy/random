.class Lcom/netease/download/storage/TestToFileProxy$2;
.super Ljava/lang/Object;
.source "TestToFileProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/storage/TestToFileProxy;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/storage/TestToFileProxy;


# direct methods
.method constructor <init>(Lcom/netease/download/storage/TestToFileProxy;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/netease/download/storage/TestToFileProxy$2;->this$0:Lcom/netease/download/storage/TestToFileProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xbb8

    .line 150
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v0, "TestToFileProxy"

    const-string v1, "\u5206\u7247\u4e0b\u8f7d\u8be6\u60c5\uff0c\u53d1\u8d77\u7ed3\u675f\u547d\u4ee4"

    .line 156
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :try_start_1
    iget-object v0, p0, Lcom/netease/download/storage/TestToFileProxy$2;->this$0:Lcom/netease/download/storage/TestToFileProxy;

    invoke-static {v0}, Lcom/netease/download/storage/TestToFileProxy;->access$000(Lcom/netease/download/storage/TestToFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/netease/download/storage/TestToFileProxy$2;->this$0:Lcom/netease/download/storage/TestToFileProxy;

    invoke-static {v0}, Lcom/netease/download/storage/TestToFileProxy;->access$000(Lcom/netease/download/storage/TestToFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-string v1, "finish"

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method
