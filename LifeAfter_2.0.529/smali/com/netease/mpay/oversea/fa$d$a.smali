.class Lcom/netease/mpay/oversea/fa$d$a;
.super Ljava/lang/Object;
.source "ServerApiTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/fa$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/m1;

.field final synthetic b:Lcom/netease/mpay/oversea/fa$d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/fa$d;Lcom/netease/mpay/oversea/m1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/fa$d$a;->b:Lcom/netease/mpay/oversea/fa$d;

    iput-object p2, p0, Lcom/netease/mpay/oversea/fa$d$a;->a:Lcom/netease/mpay/oversea/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa$d$a;->b:Lcom/netease/mpay/oversea/fa$d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/fa$d;->a:Lcom/netease/mpay/oversea/fa;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/fa;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa$d$a;->b:Lcom/netease/mpay/oversea/fa$d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/fa$d;->a:Lcom/netease/mpay/oversea/fa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa$d$a;->a:Lcom/netease/mpay/oversea/m1;

    iget-object v2, v0, Lcom/netease/mpay/oversea/fa;->e:Lcom/netease/mpay/oversea/ea;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/m1;Lcom/netease/mpay/oversea/ea;)V

    return-void
.end method
