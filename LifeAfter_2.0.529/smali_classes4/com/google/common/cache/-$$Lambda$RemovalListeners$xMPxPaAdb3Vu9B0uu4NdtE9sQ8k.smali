.class public final synthetic Lcom/google/common/cache/-$$Lambda$RemovalListeners$xMPxPaAdb3Vu9B0uu4NdtE9sQ8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/cache/RemovalListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Lcom/google/common/cache/RemovalListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/cache/RemovalListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/-$$Lambda$RemovalListeners$xMPxPaAdb3Vu9B0uu4NdtE9sQ8k;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/common/cache/-$$Lambda$RemovalListeners$xMPxPaAdb3Vu9B0uu4NdtE9sQ8k;->f$1:Lcom/google/common/cache/RemovalListener;

    return-void
.end method


# virtual methods
.method public final onRemoval(Lcom/google/common/cache/RemovalNotification;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/-$$Lambda$RemovalListeners$xMPxPaAdb3Vu9B0uu4NdtE9sQ8k;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/common/cache/-$$Lambda$RemovalListeners$xMPxPaAdb3Vu9B0uu4NdtE9sQ8k;->f$1:Lcom/google/common/cache/RemovalListener;

    invoke-static {v0, v1, p1}, Lcom/google/common/cache/RemovalListeners;->lambda$asynchronous$1(Ljava/util/concurrent/Executor;Lcom/google/common/cache/RemovalListener;Lcom/google/common/cache/RemovalNotification;)V

    return-void
.end method
