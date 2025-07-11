.class Lcom/netease/mrzhna/Client$12;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/netease/pushclient/PushManager$PushManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Client;->requestPushService()V
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

    .line 2085
    iput-object p1, p0, Lcom/netease/mrzhna/Client$12;->this$0:Lcom/netease/mrzhna/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailed(Ljava/lang/String;)V
    .locals 2

    .line 2098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushManager Init Failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NeoX"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    iget-object p1, p0, Lcom/netease/mrzhna/Client$12;->this$0:Lcom/netease/mrzhna/Client;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/netease/mrzhna/Client;->m_is_push_manager_init:Z

    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    const/4 v0, 0x0

    .line 2090
    invoke-static {v0}, Lcom/netease/pushclient/PushManager;->setNiepushMode(I)V

    .line 2092
    invoke-static {}, Lcom/netease/pushclient/PushManager;->startService()V

    return-void
.end method
