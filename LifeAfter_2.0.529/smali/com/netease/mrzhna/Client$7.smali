.class Lcom/netease/mrzhna/Client$7;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Client;->extendFunc(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Client;

.field final synthetic val$params:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Client;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 850
    iput-object p1, p0, Lcom/netease/mrzhna/Client$7;->this$0:Lcom/netease/mrzhna/Client;

    iput p2, p0, Lcom/netease/mrzhna/Client$7;->val$type:I

    iput-object p3, p0, Lcom/netease/mrzhna/Client$7;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 852
    iget v0, p0, Lcom/netease/mrzhna/Client$7;->val$type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client$7;->this$0:Lcom/netease/mrzhna/Client;

    iget-object v1, p0, Lcom/netease/mrzhna/Client$7;->val$params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mrzhna/Client;->newCustomIntent(Ljava/lang/String;)Z

    goto :goto_0

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/netease/mrzhna/Client$7;->this$0:Lcom/netease/mrzhna/Client;

    invoke-virtual {v0}, Lcom/netease/mrzhna/Client;->createScreenshotObserver()V

    goto :goto_0

    .line 854
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SDKPharos;->getInstance()Lcom/netease/ntunisdk/base/SDKPharos;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mrzhna/Client$7;->val$params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SDKPharos;->extendFunc(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
