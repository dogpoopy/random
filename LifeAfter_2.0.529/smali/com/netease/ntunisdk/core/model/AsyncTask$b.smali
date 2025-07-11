.class final Lcom/netease/ntunisdk/core/model/AsyncTask$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/model/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netease/ntunisdk/core/model/AsyncTask$a;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/netease/ntunisdk/core/model/AsyncTask$a;->a:Lcom/netease/ntunisdk/core/model/AsyncTask;

    iget-object v0, v0, Lcom/netease/ntunisdk/core/model/AsyncTask$a;->b:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/core/model/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object p1, v0, Lcom/netease/ntunisdk/core/model/AsyncTask$a;->a:Lcom/netease/ntunisdk/core/model/AsyncTask;

    iget-object v0, v0, Lcom/netease/ntunisdk/core/model/AsyncTask$a;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/core/model/AsyncTask;->c(Lcom/netease/ntunisdk/core/model/AsyncTask;Ljava/lang/Object;)V

    return-void
.end method
