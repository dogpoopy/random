.class Lcom/netease/mpay/oversea/i7$a;
.super Ljava/lang/Object;
.source "PNMigrateFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/i7;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/d7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/netease/mpay/oversea/d7;

.field final synthetic c:Lcom/netease/mpay/oversea/i7;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/i7;Landroid/content/Context;Lcom/netease/mpay/oversea/d7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/i7$a;->c:Lcom/netease/mpay/oversea/i7;

    iput-object p2, p0, Lcom/netease/mpay/oversea/i7$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/mpay/oversea/i7$a;->b:Lcom/netease/mpay/oversea/d7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i7$a;->c:Lcom/netease/mpay/oversea/i7;

    iget-object v1, p0, Lcom/netease/mpay/oversea/i7$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/mpay/oversea/ib;->a(Landroid/content/Context;)Lcom/netease/mpay/oversea/ib;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/i7;->a:Lcom/netease/mpay/oversea/ib;

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/i7$a$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/i7$a$a;-><init>(Lcom/netease/mpay/oversea/i7$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
