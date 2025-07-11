.class Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback$2;
.super Ljava/lang/Object;
.source "WriterHandlerCallback.java"

# interfaces
.implements Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->zipAndUpload(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;

.field final synthetic val$uploadCallBack:Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback$2;->this$0:Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;

    iput-object p2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback$2;->val$uploadCallBack:Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;

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

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WriterHandlerCallback [zipAndUpload] [onZipResult] unitName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback$2;->this$0:Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;

    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->access$000(Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  single file,  [onZipResult] suc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", zipPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 264
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy;->getInstance()Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback$2;->val$uploadCallBack:Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;

    invoke-virtual {p1, p3, v0}, Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy;->uploadFile(Ljava/lang/String;Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;)Z

    .line 265
    invoke-static {p2}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->deleteAllFilesByFileList(Ljava/util/ArrayList;)Z

    :cond_0
    return-void
.end method
