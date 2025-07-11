.class public final synthetic Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$Task$H-VWkQ-MaCCrUC5zD5djQbjKLNs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/ntunisdk/piclib/thread/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/ntunisdk/piclib/thread/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$Task$H-VWkQ-MaCCrUC5zD5djQbjKLNs;->f$0:Lcom/netease/ntunisdk/piclib/thread/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$Task$H-VWkQ-MaCCrUC5zD5djQbjKLNs;->f$0:Lcom/netease/ntunisdk/piclib/thread/Task;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/thread/Task;->lambda$cancel$1$Task()V

    return-void
.end method
