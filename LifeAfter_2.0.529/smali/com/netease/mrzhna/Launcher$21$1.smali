.class Lcom/netease/mrzhna/Launcher$21$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Launcher$21;->onDownloadStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/mrzhna/Launcher$21;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Launcher$21;)V
    .locals 0

    .line 2464
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$21$1;->this$1:Lcom/netease/mrzhna/Launcher$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2468
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$21$1;->this$1:Lcom/netease/mrzhna/Launcher$21;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$2800(Lcom/netease/mrzhna/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2470
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$21$1;->this$1:Lcom/netease/mrzhna/Launcher$21;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$2800(Lcom/netease/mrzhna/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2473
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/mrzhna/Launcher$CheckObbDeliver;

    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$21$1;->this$1:Lcom/netease/mrzhna/Launcher$21;

    iget-object v2, v2, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-direct {v1, v2}, Lcom/netease/mrzhna/Launcher$CheckObbDeliver;-><init>(Lcom/netease/mrzhna/Launcher;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2474
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
