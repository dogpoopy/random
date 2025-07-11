.class Lcom/netease/cc/videoedit/transcoder/Transcoder$Factory;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/transcoder/Transcoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Factory"
.end annotation


# instance fields
.field private count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/netease/cc/videoedit/transcoder/Transcoder;


# direct methods
.method private constructor <init>(Lcom/netease/cc/videoedit/transcoder/Transcoder;)V
    .locals 1

    .line 59
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$Factory;->this$0:Lcom/netease/cc/videoedit/transcoder/Transcoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$Factory;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/cc/videoedit/transcoder/Transcoder;Lcom/netease/cc/videoedit/transcoder/Transcoder$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/Transcoder$Factory;-><init>(Lcom/netease/cc/videoedit/transcoder/Transcoder;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/Transcoder;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Thread #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$Factory;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
