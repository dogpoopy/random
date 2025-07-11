.class Lcom/netease/ntunisdk/base/utils/HTTPQueue$1;
.super Ljava/lang/Object;
.source "HTTPQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/HTTPQueue;->checkResend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$1;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$1;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->checkResendByThread()V

    return-void
.end method
