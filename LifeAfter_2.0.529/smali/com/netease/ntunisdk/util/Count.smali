.class public Lcom/netease/ntunisdk/util/Count;
.super Ljava/lang/Object;
.source "Count.java"


# instance fields
.field private times:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/netease/ntunisdk/util/Count;->times:I

    return-void
.end method


# virtual methods
.method public getTimes()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/netease/ntunisdk/util/Count;->times:I

    return v0
.end method

.method public declared-synchronized plusTimes()V
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    iget v0, p0, Lcom/netease/ntunisdk/util/Count;->times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/ntunisdk/util/Count;->times:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
