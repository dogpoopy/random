.class Lcom/netease/mrzhna/Channel$5;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Channel;->tryExit()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Channel;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Channel;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/netease/mrzhna/Channel$5;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/netease/mrzhna/Channel$5;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-virtual {v0}, Lcom/netease/mrzhna/Channel;->onOpenExitViewFailed()V

    return-void
.end method
