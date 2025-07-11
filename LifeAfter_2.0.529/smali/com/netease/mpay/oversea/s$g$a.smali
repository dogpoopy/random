.class Lcom/netease/mpay/oversea/s$g$a;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s$g;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/netease/mpay/oversea/s$g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s$g;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s$g$a;->b:Lcom/netease/mpay/oversea/s$g;

    iput-object p2, p0, Lcom/netease/mpay/oversea/s$g$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s$g$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/s$g$a;->b:Lcom/netease/mpay/oversea/s$g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/s$g;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/s$g$a;->b:Lcom/netease/mpay/oversea/s$g;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/s$g;->a()V

    .line 4
    throw v0
.end method
