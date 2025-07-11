.class Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy$2;
.super Ljava/lang/Object;
.source "UploadProxy.java"

# interfaces
.implements Lcom/netease/ntunisdk/unilogger/network/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy;->uploadFile(Ljava/lang/String;Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy;

.field final synthetic val$uploadCallBack:Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy;Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy$2;->this$0:Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy;

    iput-object p2, p0, Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy$2;->val$uploadCallBack:Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetCallback(ILjava/lang/String;)V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadProxy [upLoadFile] [onNetCallback] code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/uploader/UploadProxy$2;->val$uploadCallBack:Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;->onUploadResult(ILjava/lang/String;)V

    return-void
.end method
