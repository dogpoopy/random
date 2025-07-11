.class Lcom/netease/mpay/oversea/fa$d;
.super Ljava/lang/Object;
.source "ServerApiTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/fa;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/oversea/fa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/fa$d;->a:Lcom/netease/mpay/oversea/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/fa;Lcom/netease/mpay/oversea/fa$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/fa$d;-><init>(Lcom/netease/mpay/oversea/fa;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa$d;->a:Lcom/netease/mpay/oversea/fa;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/fa;->e()Lcom/netease/mpay/oversea/m1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa$d;->a:Lcom/netease/mpay/oversea/fa;

    iget-object v1, v1, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/netease/mpay/oversea/fa$d$a;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/oversea/fa$d$a;-><init>(Lcom/netease/mpay/oversea/fa$d;Lcom/netease/mpay/oversea/m1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
