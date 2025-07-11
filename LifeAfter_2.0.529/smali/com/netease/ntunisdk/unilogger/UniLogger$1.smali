.class Lcom/netease/ntunisdk/unilogger/UniLogger$1;
.super Ljava/lang/Object;
.source "UniLogger.java"

# interfaces
.implements Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/unilogger/UniLogger;->uploadLogFile(Ljava/lang/String;Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/UniLogger;

.field final synthetic val$uploadCallBack:Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/unilogger/UniLogger;Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/UniLogger$1;->this$0:Lcom/netease/ntunisdk/unilogger/UniLogger;

    iput-object p2, p0, Lcom/netease/ntunisdk/unilogger/UniLogger$1;->val$uploadCallBack:Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZipResult(ZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
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

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UniLogger [uploadLogFile] single file,  [onZipResult] suc="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", zipPath="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 174
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy;->getInstance()Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/UniLogger$1;->val$uploadCallBack:Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;

    invoke-virtual {p1, p3, p2}, Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy;->uploadFile(Ljava/lang/String;Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;)Z

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/UniLogger$1;->val$uploadCallBack:Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;

    const/4 p2, -0x1

    invoke-interface {p1, p2, p3}, Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;->onUploadResult(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
