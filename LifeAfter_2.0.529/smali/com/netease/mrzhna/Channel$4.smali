.class Lcom/netease/mrzhna/Channel$4;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Channel;->onOpenExitViewFailed()V
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

    .line 497
    iput-object p1, p0, Lcom/netease/mrzhna/Channel$4;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 500
    iget-object p1, p0, Lcom/netease/mrzhna/Channel$4;->this$0:Lcom/netease/mrzhna/Channel;

    const-string p2, "quicksdk"

    invoke-static {p1, p2}, Lcom/netease/mrzhna/Channel;->access$000(Lcom/netease/mrzhna/Channel;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 501
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    goto :goto_0

    .line 503
    :cond_0
    iget-object p1, p0, Lcom/netease/mrzhna/Channel$4;->this$0:Lcom/netease/mrzhna/Channel;

    invoke-virtual {p1}, Lcom/netease/mrzhna/Channel;->exitApp()V

    :goto_0
    return-void
.end method
