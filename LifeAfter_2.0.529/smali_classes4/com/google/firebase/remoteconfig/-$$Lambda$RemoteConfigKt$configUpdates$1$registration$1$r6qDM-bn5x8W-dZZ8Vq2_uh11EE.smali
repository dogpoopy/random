.class public final synthetic Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigKt$configUpdates$1$registration$1$r6qDM-bn5x8W-dZZ8Vq2_uh11EE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic f$1:Lcom/google/firebase/remoteconfig/ConfigUpdate;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/remoteconfig/ConfigUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigKt$configUpdates$1$registration$1$r6qDM-bn5x8W-dZZ8Vq2_uh11EE;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigKt$configUpdates$1$registration$1$r6qDM-bn5x8W-dZZ8Vq2_uh11EE;->f$1:Lcom/google/firebase/remoteconfig/ConfigUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigKt$configUpdates$1$registration$1$r6qDM-bn5x8W-dZZ8Vq2_uh11EE;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigKt$configUpdates$1$registration$1$r6qDM-bn5x8W-dZZ8Vq2_uh11EE;->f$1:Lcom/google/firebase/remoteconfig/ConfigUpdate;

    invoke-static {v0, v1}, Lcom/google/firebase/remoteconfig/RemoteConfigKt$configUpdates$1$registration$1;->lambda$r6qDM-bn5x8W-dZZ8Vq2_uh11EE(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/remoteconfig/ConfigUpdate;)V

    return-void
.end method
