.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$AggregateFuture$npIFETVPzf2j-U5eeu2gkVVWBFM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/AggregateFuture;

.field public final synthetic f$1:Lcom/google/common/collect/ImmutableCollection;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/-$$Lambda$AggregateFuture$npIFETVPzf2j-U5eeu2gkVVWBFM;->f$0:Lcom/google/common/util/concurrent/AggregateFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/-$$Lambda$AggregateFuture$npIFETVPzf2j-U5eeu2gkVVWBFM;->f$1:Lcom/google/common/collect/ImmutableCollection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/-$$Lambda$AggregateFuture$npIFETVPzf2j-U5eeu2gkVVWBFM;->f$0:Lcom/google/common/util/concurrent/AggregateFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/-$$Lambda$AggregateFuture$npIFETVPzf2j-U5eeu2gkVVWBFM;->f$1:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->lambda$init$1$AggregateFuture(Lcom/google/common/collect/ImmutableCollection;)V

    return-void
.end method
