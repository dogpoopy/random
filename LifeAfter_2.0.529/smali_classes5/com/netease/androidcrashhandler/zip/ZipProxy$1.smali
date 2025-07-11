.class Lcom/netease/androidcrashhandler/zip/ZipProxy$1;
.super Ljava/lang/Object;
.source "ZipProxy.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/zip/ZipProxy;->dispatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/zip/ZipProxy;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/zip/ZipProxy;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$1;->this$0:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sOldUploadFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->getValidZipFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->getValidZipFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 149
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->checkNetAndAgreement()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-wide/16 v4, 0x3e8

    .line 151
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/2addr v1, v3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 154
    invoke-static {}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->access$000()[B

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :try_start_1
    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$1;->this$0:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    invoke-static {v2}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->access$100(Lcom/netease/androidcrashhandler/zip/ZipProxy;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 156
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 163
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    invoke-static {v1}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->getCfgFileContent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 166
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 167
    iget-object v4, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$1;->this$0:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    invoke-static {v4, v1, v2, v3}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->access$200(Lcom/netease/androidcrashhandler/zip/ZipProxy;Ljava/lang/String;Lorg/json/JSONObject;I)V

    goto :goto_0

    :cond_2
    const-string v2, "trace"

    const-string v4, "ZipProxy [dispatch] param\u6587\u4ef6\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u751f\u6210config\u6587\u4ef6\uff0c\u76f4\u63a5\u5220\u9664\u8be5zip\u5305"

    .line 169
    invoke-static {v2, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 174
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/zip/ZipProxy$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
