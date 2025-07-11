.class Lcom/netease/mrzhna/Client$4;
.super Landroid/telephony/PhoneStateListener;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Client;->onCreate(Landroid/os/Bundle;)V
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

    .line 594
    iput-object p1, p0, Lcom/netease/mrzhna/Client$4;->this$0:Lcom/netease/mrzhna/Client;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 612
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RINGING, number: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NeoX"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object p1, p0, Lcom/netease/mrzhna/Client$4;->this$0:Lcom/netease/mrzhna/Client;

    invoke-virtual {p1, v0}, Lcom/netease/mrzhna/Client;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkchange state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NeoXDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p2, -0x1

    .line 602
    :cond_0
    iget-object p1, p0, Lcom/netease/mrzhna/Client$4;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {p1}, Lcom/netease/mrzhna/Client;->access$600(Lcom/netease/mrzhna/Client;)I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 604
    iget-object p1, p0, Lcom/netease/mrzhna/Client$4;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {p1}, Lcom/netease/mrzhna/Client;->access$600(Lcom/netease/mrzhna/Client;)I

    move-result p1

    invoke-static {p1, p2}, Lcom/netease/neox/NativeInterface;->NativeOnNetworkChanged(II)V

    .line 606
    :cond_1
    iget-object p1, p0, Lcom/netease/mrzhna/Client$4;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {p1, p2}, Lcom/netease/mrzhna/Client;->access$602(Lcom/netease/mrzhna/Client;I)I

    return-void
.end method
