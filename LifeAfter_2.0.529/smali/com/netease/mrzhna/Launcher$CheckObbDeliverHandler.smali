.class Lcom/netease/mrzhna/Launcher$CheckObbDeliverHandler;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckObbDeliverHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Launcher;


# direct methods
.method public constructor <init>(Lcom/netease/mrzhna/Launcher;Landroid/os/Looper;)V
    .locals 0

    .line 2349
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$CheckObbDeliverHandler;->this$0:Lcom/netease/mrzhna/Launcher;

    .line 2350
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 2355
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2356
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2363
    :cond_0
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$CheckObbDeliverHandler;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {p1}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mrzhna/Launcher;->launch()V

    goto :goto_1

    .line 2359
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$CheckObbDeliverHandler;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {p1}, Lcom/netease/mrzhna/Launcher;->onLoseOBB()V

    :goto_1
    return-void
.end method
