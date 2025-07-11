.class Lcom/netease/pharos/netlag/NetworkCheckProxy$3;
.super Ljava/util/TimerTask;
.source "NetworkCheckProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/netlag/NetworkCheckProxy;->start(Lorg/json/JSONObject;Lcom/netease/pharos/OnNetLagCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;


# direct methods
.method constructor <init>(Lcom/netease/pharos/netlag/NetworkCheckProxy;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$3;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$3;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$600(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Lcom/netease/pharos/netlag/NetworkCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/netlag/NetworkCheck;->exec()V

    return-void
.end method
