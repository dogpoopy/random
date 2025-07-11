.class Lcom/netease/mpay/oversea/i0$e;
.super Lcom/netease/mpay/oversea/f1;
.source "BindView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/i0;->a(ZZLcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ac;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/g6;

.field final synthetic e:Lcom/netease/mpay/oversea/i0;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/i0;Lcom/netease/mpay/oversea/g6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/i0$e;->e:Lcom/netease/mpay/oversea/i0;

    iput-object p2, p0, Lcom/netease/mpay/oversea/i0$e;->d:Lcom/netease/mpay/oversea/g6;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$e;->e:Lcom/netease/mpay/oversea/i0;

    sget-object v0, Lcom/netease/mpay/oversea/s9;->z:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/i0$e;->d:Lcom/netease/mpay/oversea/g6;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/i0;->a(Lcom/netease/mpay/oversea/i0;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/g6;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$e;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->z(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "reset_password"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
