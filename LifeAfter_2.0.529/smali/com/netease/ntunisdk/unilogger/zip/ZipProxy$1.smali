.class Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$1;
.super Ljava/lang/Object;
.source "ZipProxy.java"

# interfaces
.implements Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->zipHistoryFileInOtherThread(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZipResult(ZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipProxy [zipHistoryFile] [onZipResult] suc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", zipPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 193
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    if-eqz p2, :cond_0

    .line 194
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 199
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy;->getInstance()Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy;

    move-result-object p1

    new-instance p2, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$1$1;

    invoke-direct {p2, p0}, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$1$1;-><init>(Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$1;)V

    invoke-virtual {p1, p3, p2}, Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy;->uploadFile(Ljava/lang/String;Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;)Z

    :cond_2
    return-void
.end method
