.class Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1$1;
.super Ljava/lang/Object;
.source "ProtocolLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$300(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    return-void
.end method
