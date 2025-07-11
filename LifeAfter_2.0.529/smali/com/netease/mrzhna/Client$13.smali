.class Lcom/netease/mrzhna/Client$13;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Client;->setKeepScreenOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Client;

.field final synthetic val$clint:Lcom/netease/mrzhna/Client;

.field final synthetic val$f:Z


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Client;ZLcom/netease/mrzhna/Client;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2572
    iput-object p1, p0, Lcom/netease/mrzhna/Client$13;->this$0:Lcom/netease/mrzhna/Client;

    iput-boolean p2, p0, Lcom/netease/mrzhna/Client$13;->val$f:Z

    iput-object p3, p0, Lcom/netease/mrzhna/Client$13;->val$clint:Lcom/netease/mrzhna/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2576
    iget-boolean v0, p0, Lcom/netease/mrzhna/Client$13;->val$f:Z

    const/16 v1, 0x80

    if-eqz v0, :cond_0

    .line 2578
    iget-object v0, p0, Lcom/netease/mrzhna/Client$13;->val$clint:Lcom/netease/mrzhna/Client;

    invoke-virtual {v0}, Lcom/netease/mrzhna/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 2582
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client$13;->val$clint:Lcom/netease/mrzhna/Client;

    invoke-virtual {v0}, Lcom/netease/mrzhna/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method
