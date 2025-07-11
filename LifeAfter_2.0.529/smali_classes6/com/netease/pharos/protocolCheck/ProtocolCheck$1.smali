.class Lcom/netease/pharos/protocolCheck/ProtocolCheck$1;
.super Ljava/util/TimerTask;
.source "ProtocolCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/protocolCheck/ProtocolCheck;->kcpCheck(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

.field final synthetic val$client:Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;


# direct methods
.method constructor <init>(Lcom/netease/pharos/protocolCheck/ProtocolCheck;Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck$1;->this$0:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

    iput-object p2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck$1;->val$client:Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 514
    iget-object v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck$1;->val$client:Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;

    invoke-virtual {v2, v0, v1}, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->Update(J)V

    return-void
.end method
