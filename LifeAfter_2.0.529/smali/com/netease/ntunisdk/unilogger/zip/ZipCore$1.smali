.class Lcom/netease/ntunisdk/unilogger/zip/ZipCore$1;
.super Ljava/lang/Object;
.source "ZipCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/unilogger/zip/ZipCore;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/zip/ZipCore;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/unilogger/zip/ZipCore;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipCore$1;->this$0:Lcom/netease/ntunisdk/unilogger/zip/ZipCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipCore$1;->this$0:Lcom/netease/ntunisdk/unilogger/zip/ZipCore;

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/zip/ZipCore;->access$000(Lcom/netease/ntunisdk/unilogger/zip/ZipCore;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->zip()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZipCore [start] Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
