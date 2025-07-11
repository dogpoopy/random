.class public Lcom/netease/download/reporter/ReportUrlController;
.super Ljava/lang/Object;
.source "ReportUrlController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportUrlController"

.field private static sReportUrlController:Lcom/netease/download/reporter/ReportUrlController;


# instance fields
.field private mIndex:I

.field private mReportIP:[Ljava/lang/String;

.field private mReportUrl:Ljava/lang/String;

.field private mUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportUrl:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportIP:[Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    return-void
.end method

.method public static getInstance()Lcom/netease/download/reporter/ReportUrlController;
    .locals 1

    .line 39
    sget-object v0, Lcom/netease/download/reporter/ReportUrlController;->sReportUrlController:Lcom/netease/download/reporter/ReportUrlController;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/netease/download/reporter/ReportUrlController;

    invoke-direct {v0}, Lcom/netease/download/reporter/ReportUrlController;-><init>()V

    sput-object v0, Lcom/netease/download/reporter/ReportUrlController;->sReportUrlController:Lcom/netease/download/reporter/ReportUrlController;

    .line 43
    :cond_0
    sget-object v0, Lcom/netease/download/reporter/ReportUrlController;->sReportUrlController:Lcom/netease/download/reporter/ReportUrlController;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    return-void
.end method

.method public geturls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportUrlController [hasNext] mIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUrls.size()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReportUrlController"

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    iget-object v1, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized init(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ReportUrlController"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportUrlController [init] reportUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    iput-object p1, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportUrl:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportIP:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    .line 52
    invoke-virtual {p0}, Lcom/netease/download/reporter/ReportUrlController;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized next()Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ReportUrlController"

    const-string v1, "ReportUrlController [next]"

    .line 83
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    iget v1, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    iget-object v2, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    iget v1, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized parse()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ReportUrlController"

    const-string v1, "ReportUrlController [parse]"

    .line 56
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/download/reporter/ReportUtil;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;

    iget-object v2, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportUrl:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;-><init>(Lcom/netease/download/reporter/ReportUrlController;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ReportUrlController"

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportUrlController [parse] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\uff0c\u94fe\u63a5\u57df\u540d= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "ReportUrlController"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportUrlController [parse] urls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeUnit()V
    .locals 2

    const-string v0, "ReportUrlController"

    const-string v1, "ReportUrlController [removeUnit]"

    .line 97
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    return-void
.end method
