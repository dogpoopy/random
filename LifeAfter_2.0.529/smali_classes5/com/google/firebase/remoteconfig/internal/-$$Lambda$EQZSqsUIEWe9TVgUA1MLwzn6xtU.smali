.class public final synthetic Lcom/google/firebase/remoteconfig/internal/-$$Lambda$EQZSqsUIEWe9TVgUA1MLwzn6xtU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$EQZSqsUIEWe9TVgUA1MLwzn6xtU;->f$0:Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$EQZSqsUIEWe9TVgUA1MLwzn6xtU;->f$0:Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->read()Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v0

    return-object v0
.end method
