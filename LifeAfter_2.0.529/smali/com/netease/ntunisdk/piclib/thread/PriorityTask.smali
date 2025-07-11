.class public abstract Lcom/netease/ntunisdk/piclib/thread/PriorityTask;
.super Lcom/netease/ntunisdk/piclib/thread/Task;
.source "PriorityTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netease/ntunisdk/piclib/thread/Task<",
        "TT;>;",
        "Ljava/lang/Comparable<",
        "Lcom/netease/ntunisdk/piclib/thread/PriorityTask<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public priority:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/thread/Task;-><init>()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;->priority:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/netease/ntunisdk/piclib/thread/PriorityTask;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 13
    iget-wide v0, p1, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;->priority:J

    iget-wide v2, p0, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;->priority:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;->compareTo(Lcom/netease/ntunisdk/piclib/thread/PriorityTask;)I

    move-result p1

    return p1
.end method
