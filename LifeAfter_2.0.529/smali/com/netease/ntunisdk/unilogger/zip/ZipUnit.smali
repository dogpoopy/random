.class public Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;
.super Ljava/lang/Object;
.source "ZipUnit.java"


# instance fields
.field public fileDatelimit:Z

.field public fileSizelimit:Z

.field public files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public zipCallBack:Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;

.field public zipDirPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;ZZ)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->files:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->fileDatelimit:Z

    .line 9
    iput-boolean v1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->fileSizelimit:Z

    .line 10
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->zipDirPath:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->zipCallBack:Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;

    .line 14
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->files:Ljava/util/ArrayList;

    .line 15
    iput-boolean p2, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->fileDatelimit:Z

    .line 16
    iput-boolean p3, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->fileSizelimit:Z

    return-void
.end method


# virtual methods
.method public setZipCallBack(Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->zipCallBack:Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;

    return-void
.end method

.method public setZipDirPath(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->zipDirPath:Ljava/lang/String;

    return-void
.end method

.method public zip()V
    .locals 5

    .line 28
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->getInstance()Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->files:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->fileDatelimit:Z

    iget-boolean v3, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->fileSizelimit:Z

    iget-object v4, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->zipDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->zipFileListInSameList(Ljava/util/ArrayList;ZZLjava/lang/String;)Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->zipCallBack:Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;

    iget-boolean v2, v0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;->zipSucess:Z

    iget-object v3, v0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;->filePathList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;->zipFileName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;->onZipResult(ZLjava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
