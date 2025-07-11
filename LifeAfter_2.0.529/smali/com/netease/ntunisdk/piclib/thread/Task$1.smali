.class Lcom/netease/ntunisdk/piclib/thread/Task$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/thread/Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/thread/Task;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/thread/Task;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$e"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/thread/Task$1;->this$0:Lcom/netease/ntunisdk/piclib/thread/Task;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/thread/Task$1;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/thread/Task$1;->this$0:Lcom/netease/ntunisdk/piclib/thread/Task;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/thread/Task$1;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/thread/Task;->onFailure(Ljava/lang/Throwable;)V

    .line 51
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/thread/Task$1;->this$0:Lcom/netease/ntunisdk/piclib/thread/Task;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/thread/Task;->onDone()V

    return-void
.end method
