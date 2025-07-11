.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$AggregateFuture$PADAJIhn2ZU4qjlVSGPN4DLWWhM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/AggregateFuture;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/util/concurrent/ListenableFuture;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/-$$Lambda$AggregateFuture$PADAJIhn2ZU4qjlVSGPN4DLWWhM;->f$0:Lcom/google/common/util/concurrent/AggregateFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/-$$Lambda$AggregateFuture$PADAJIhn2ZU4qjlVSGPN4DLWWhM;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    iput p3, p0, Lcom/google/common/util/concurrent/-$$Lambda$AggregateFuture$PADAJIhn2ZU4qjlVSGPN4DLWWhM;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/-$$Lambda$AggregateFuture$PADAJIhn2ZU4qjlVSGPN4DLWWhM;->f$0:Lcom/google/common/util/concurrent/AggregateFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/-$$Lambda$AggregateFuture$PADAJIhn2ZU4qjlVSGPN4DLWWhM;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    iget v2, p0, Lcom/google/common/util/concurrent/-$$Lambda$AggregateFuture$PADAJIhn2ZU4qjlVSGPN4DLWWhM;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/AggregateFuture;->lambda$init$0$AggregateFuture(Lcom/google/common/util/concurrent/ListenableFuture;I)V

    return-void
.end method
