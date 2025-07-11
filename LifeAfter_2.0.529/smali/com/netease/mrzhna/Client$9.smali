.class Lcom/netease/mrzhna/Client$9;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Client;->openWebViewWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Client;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Client;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1637
    iput-object p1, p0, Lcom/netease/mrzhna/Client$9;->this$0:Lcom/netease/mrzhna/Client;

    iput-object p2, p0, Lcom/netease/mrzhna/Client$9;->val$data:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mrzhna/Client$9;->val$mimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mrzhna/Client$9;->val$encoding:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1639
    iget-object v0, p0, Lcom/netease/mrzhna/Client$9;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v0}, Lcom/netease/mrzhna/Client;->access$700(Lcom/netease/mrzhna/Client;)Lcom/netease/mrzhna/NeoXWebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/netease/mrzhna/Client$9;->this$0:Lcom/netease/mrzhna/Client;

    new-instance v1, Lcom/netease/mrzhna/NeoXWebView;

    iget-object v2, p0, Lcom/netease/mrzhna/Client$9;->this$0:Lcom/netease/mrzhna/Client;

    invoke-direct {v1, v2}, Lcom/netease/mrzhna/NeoXWebView;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/netease/mrzhna/Client;->access$702(Lcom/netease/mrzhna/Client;Lcom/netease/mrzhna/NeoXWebView;)Lcom/netease/mrzhna/NeoXWebView;

    .line 1641
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client$9;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v0}, Lcom/netease/mrzhna/Client;->access$700(Lcom/netease/mrzhna/Client;)Lcom/netease/mrzhna/NeoXWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mrzhna/NeoXWebView;->show()V

    .line 1642
    iget-object v0, p0, Lcom/netease/mrzhna/Client$9;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v0}, Lcom/netease/mrzhna/Client;->access$700(Lcom/netease/mrzhna/Client;)Lcom/netease/mrzhna/NeoXWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mrzhna/Client$9;->val$data:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mrzhna/Client$9;->val$mimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mrzhna/Client$9;->val$encoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mrzhna/NeoXWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
