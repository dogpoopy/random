.class public final synthetic Lcom/google/common/graph/-$$Lambda$ImmutableNetwork$QwjzNY5PiEZk7CT6XJm4z_rK8mI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/common/graph/Network;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/Network;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/-$$Lambda$ImmutableNetwork$QwjzNY5PiEZk7CT6XJm4z_rK8mI;->f$0:Lcom/google/common/graph/Network;

    iput-object p2, p0, Lcom/google/common/graph/-$$Lambda$ImmutableNetwork$QwjzNY5PiEZk7CT6XJm4z_rK8mI;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/graph/-$$Lambda$ImmutableNetwork$QwjzNY5PiEZk7CT6XJm4z_rK8mI;->f$0:Lcom/google/common/graph/Network;

    iget-object v1, p0, Lcom/google/common/graph/-$$Lambda$ImmutableNetwork$QwjzNY5PiEZk7CT6XJm4z_rK8mI;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/google/common/graph/ImmutableNetwork;->lambda$adjacentNodeFn$2(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
