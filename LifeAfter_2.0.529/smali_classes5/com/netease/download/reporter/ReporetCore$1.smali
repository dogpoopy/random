.class Lcom/netease/download/reporter/ReporetCore$1;
.super Ljava/lang/Object;
.source "ReporetCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReporetCore;->test()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReporetCore;


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReporetCore;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/netease/download/reporter/ReporetCore$1;->this$0:Lcom/netease/download/reporter/ReporetCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    const-wide/16 v0, 0x3e8

    .line 64
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
