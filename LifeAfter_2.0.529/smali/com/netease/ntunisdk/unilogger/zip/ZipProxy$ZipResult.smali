.class public Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;
.super Ljava/lang/Object;
.source "ZipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZipResult"
.end annotation


# instance fields
.field public filePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;

.field public zipFileName:Ljava/lang/String;

.field public zipSucess:Z


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;->this$0:Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;->zipSucess:Z

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;->filePathList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;->zipFileName:Ljava/lang/String;

    return-void
.end method
