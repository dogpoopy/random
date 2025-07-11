.class public final synthetic Landroidx/camera/core/impl/utils/executor/-$$Lambda$AudioExecutor$1$1-ijU1sjMzeU-XbUDuQjmlkxnFY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/utils/executor/-$$Lambda$AudioExecutor$1$1-ijU1sjMzeU-XbUDuQjmlkxnFY;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/utils/executor/-$$Lambda$AudioExecutor$1$1-ijU1sjMzeU-XbUDuQjmlkxnFY;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/executor/AudioExecutor$1;->lambda$newThread$0(Ljava/lang/Runnable;)V

    return-void
.end method
