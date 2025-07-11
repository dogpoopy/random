.class public Lcom/netease/download/reporter/ReporetCore;
.super Ljava/lang/Object;
.source "ReporetCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReporetCore"

.field private static sReporetCore:Lcom/netease/download/reporter/ReporetCore;


# instance fields
.field private mOpen:Z

.field private mStorageLoopThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/netease/download/reporter/ReporetCore;->mStorageLoopThread:Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/netease/download/reporter/ReporetCore;->mOpen:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/download/reporter/ReporetCore;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/netease/download/reporter/ReporetCore;->mOpen:Z

    return p0
.end method

.method public static getInstance()Lcom/netease/download/reporter/ReporetCore;
    .locals 1

    .line 29
    sget-object v0, Lcom/netease/download/reporter/ReporetCore;->sReporetCore:Lcom/netease/download/reporter/ReporetCore;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/netease/download/reporter/ReporetCore;

    invoke-direct {v0}, Lcom/netease/download/reporter/ReporetCore;-><init>()V

    sput-object v0, Lcom/netease/download/reporter/ReporetCore;->sReporetCore:Lcom/netease/download/reporter/ReporetCore;

    .line 33
    :cond_0
    sget-object v0, Lcom/netease/download/reporter/ReporetCore;->sReporetCore:Lcom/netease/download/reporter/ReporetCore;

    return-object v0
.end method


# virtual methods
.method public close(J)V
    .locals 2

    const-string v0, "ReporetCore"

    const-string v1, "ReporetCore [close] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u6301\u4e45\u5316\u7ed3\u675f\uff0c\u53d1\u8d77\u7ed3\u675f\u547d\u4ee4"

    .line 49
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/netease/download/reporter/ReporetCore;->finish(J)V

    return-void
.end method

.method public finish(J)V
    .locals 0

    const-string p1, "ReporetCore"

    const-string p2, "ReporetCore [finish] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u6301\u4e45\u5316\u7ed3\u675f\uff0c\u53d1\u8d77\u7ed3\u675f\u547d\u4ee4"

    .line 106
    invoke-static {p1, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/netease/download/reporter/ReportFile;->getInstances()Lcom/netease/download/reporter/ReportFile;

    move-result-object p1

    const-string p2, "finish_over"

    invoke-virtual {p1, p2}, Lcom/netease/download/reporter/ReportFile;->cleanAndAdd(Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .locals 2

    const-string v0, "ReporetCore"

    const-string v1, "ReporetCore [init] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---ReporetCore \u521d\u59cb\u5316"

    .line 43
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/netease/download/reporter/ReporetCore;->startStorageLoop()V

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Lcom/netease/download/reporter/ReporetCore;->setOpen(Z)V

    return-void
.end method

.method public setOpen(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/netease/download/reporter/ReporetCore;->mOpen:Z

    return-void
.end method

.method public startStorageLoop()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/netease/download/reporter/ReporetCore;->mStorageLoopThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReporetCore$4;

    invoke-direct {v1, p0}, Lcom/netease/download/reporter/ReporetCore$4;-><init>(Lcom/netease/download/reporter/ReporetCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/netease/download/reporter/ReporetCore;->mStorageLoopThread:Ljava/lang/Thread;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public test()V
    .locals 2

    const-string v0, "ReporetCore"

    const-string v1, "ReporetCore [test] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---ReporetCore \u6a21\u62df\u8c03\u7528"

    .line 54
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReporetCore$1;

    invoke-direct {v1, p0}, Lcom/netease/download/reporter/ReporetCore$1;-><init>(Lcom/netease/download/reporter/ReporetCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReporetCore$2;

    invoke-direct {v1, p0}, Lcom/netease/download/reporter/ReporetCore$2;-><init>(Lcom/netease/download/reporter/ReporetCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReporetCore$3;

    invoke-direct {v1, p0}, Lcom/netease/download/reporter/ReporetCore$3;-><init>(Lcom/netease/download/reporter/ReporetCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
