.class Lcom/netease/pharos/PharosProxy$2;
.super Ljava/lang/Object;
.source "PharosProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/PharosProxy;->executeAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/PharosProxy;


# direct methods
.method constructor <init>(Lcom/netease/pharos/PharosProxy;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-static {v0}, Lcom/netease/pharos/PharosProxy;->access$000(Lcom/netease/pharos/PharosProxy;)V

    return-void
.end method
