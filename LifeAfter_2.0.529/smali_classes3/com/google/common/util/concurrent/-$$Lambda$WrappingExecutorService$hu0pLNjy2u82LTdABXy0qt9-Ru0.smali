.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$WrappingExecutorService$hu0pLNjy2u82LTdABXy0qt9-Ru0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/-$$Lambda$WrappingExecutorService$hu0pLNjy2u82LTdABXy0qt9-Ru0;->f$0:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/-$$Lambda$WrappingExecutorService$hu0pLNjy2u82LTdABXy0qt9-Ru0;->f$0:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/google/common/util/concurrent/WrappingExecutorService;->lambda$wrapTask$0(Ljava/util/concurrent/Callable;)V

    return-void
.end method
