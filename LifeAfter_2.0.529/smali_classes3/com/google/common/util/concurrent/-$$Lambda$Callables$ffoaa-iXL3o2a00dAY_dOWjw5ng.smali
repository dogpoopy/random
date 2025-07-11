.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$Callables$ffoaa-iXL3o2a00dAY_dOWjw5ng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/-$$Lambda$Callables$ffoaa-iXL3o2a00dAY_dOWjw5ng;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/-$$Lambda$Callables$ffoaa-iXL3o2a00dAY_dOWjw5ng;->f$0:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Callables;->lambda$returning$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
