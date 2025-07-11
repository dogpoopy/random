.class Lcom/netease/pharos/netlag/NetworkCheck$1;
.super Ljava/lang/Object;
.source "NetworkCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/netlag/NetworkCheck;->exec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/netlag/NetworkCheck;


# direct methods
.method constructor <init>(Lcom/netease/pharos/netlag/NetworkCheck;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheck$1;->this$0:Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck$1;->this$0:Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheck;->access$000(Lcom/netease/pharos/netlag/NetworkCheck;)V

    return-void
.end method
