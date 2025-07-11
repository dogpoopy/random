.class public final synthetic Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$Task$AvxAq5Xs2mOhr3SMBbZslpxDRDE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/ntunisdk/piclib/thread/Task;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/ntunisdk/piclib/thread/Task;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$Task$AvxAq5Xs2mOhr3SMBbZslpxDRDE;->f$0:Lcom/netease/ntunisdk/piclib/thread/Task;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$Task$AvxAq5Xs2mOhr3SMBbZslpxDRDE;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$Task$AvxAq5Xs2mOhr3SMBbZslpxDRDE;->f$0:Lcom/netease/ntunisdk/piclib/thread/Task;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$Task$AvxAq5Xs2mOhr3SMBbZslpxDRDE;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/thread/Task;->lambda$run$0$Task(Ljava/lang/Object;)V

    return-void
.end method
