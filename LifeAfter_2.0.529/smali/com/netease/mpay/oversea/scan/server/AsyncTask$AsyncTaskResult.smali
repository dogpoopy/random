.class Lcom/netease/mpay/oversea/scan/server/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/server/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/netease/mpay/oversea/scan/server/AsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/netease/mpay/oversea/scan/server/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/scan/server/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$AsyncTaskResult;->mTask:Lcom/netease/mpay/oversea/scan/server/AsyncTask;

    .line 544
    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
