.class Lcom/netease/mpay/oversea/s$f;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mpay/oversea/s$e;

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, v0, Lcom/netease/mpay/oversea/s$e;->a:Lcom/netease/mpay/oversea/s;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s$e;->b:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/s;->c([Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, v0, Lcom/netease/mpay/oversea/s$e;->a:Lcom/netease/mpay/oversea/s;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s$e;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/s;->c(Lcom/netease/mpay/oversea/s;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
