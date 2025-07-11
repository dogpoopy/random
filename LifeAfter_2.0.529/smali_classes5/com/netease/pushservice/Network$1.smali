.class Lcom/netease/pushservice/Network$1;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pushservice/Network;->disconnectRetry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pushservice/Network;

.field final synthetic val$retryAfter:I


# direct methods
.method constructor <init>(Lcom/netease/pushservice/Network;I)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/netease/pushservice/Network$1;->this$0:Lcom/netease/pushservice/Network;

    iput p2, p0, Lcom/netease/pushservice/Network$1;->val$retryAfter:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/netease/pushservice/Network$1;->this$0:Lcom/netease/pushservice/Network;

    iget v1, p0, Lcom/netease/pushservice/Network$1;->val$retryAfter:I

    invoke-static {v0, v1}, Lcom/netease/pushservice/Network;->access$000(Lcom/netease/pushservice/Network;I)V

    return-void
.end method
