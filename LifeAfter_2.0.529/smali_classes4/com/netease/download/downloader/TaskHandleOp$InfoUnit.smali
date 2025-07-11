.class Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;
.super Ljava/lang/Object;
.source "TaskHandleOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/downloader/TaskHandleOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfoUnit"
.end annotation


# instance fields
.field public mCode:I

.field public mCommonKey:Ljava/lang/String;

.field public mCommonValue:Ljava/lang/String;

.field public mCount:J

.field public mFirst:J

.field public mHeader:Lcom/netease/ntunisdk/okhttp3/Headers;

.field public mIp:Ljava/lang/String;

.field public mLast:J

.field public mMd5:Ljava/lang/String;

.field public mObject:Ljava/lang/String;

.field public mSize:J

.field public mTime:J

.field public mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/download/downloader/TaskHandleOp;


# direct methods
.method constructor <init>(Lcom/netease/download/downloader/TaskHandleOp;)V
    .locals 0

    .line 1013
    iput-object p1, p0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1014
    iput-object p1, p0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    return-void
.end method
