.class Lcom/netease/mrzhna/Client$11;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Client;->removeWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Client;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Client;)V
    .locals 0

    .line 1663
    iput-object p1, p0, Lcom/netease/mrzhna/Client$11;->this$0:Lcom/netease/mrzhna/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1665
    iget-object v0, p0, Lcom/netease/mrzhna/Client$11;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v0}, Lcom/netease/mrzhna/Client;->access$700(Lcom/netease/mrzhna/Client;)Lcom/netease/mrzhna/NeoXWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mrzhna/NeoXWebView;->hide()V

    return-void
.end method
