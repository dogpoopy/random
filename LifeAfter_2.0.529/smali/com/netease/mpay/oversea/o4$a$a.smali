.class Lcom/netease/mpay/oversea/o4$a$a;
.super Ljava/lang/Object;
.source "InitImpl.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/q$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o4$a;->a(Lcom/netease/mpay/oversea/q3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/o4$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o4$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o4$a$a;->a:Lcom/netease/mpay/oversea/o4$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/h9;->c(Z)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/o4$a$a;->a:Lcom/netease/mpay/oversea/o4$a;

    iget-object v0, p1, Lcom/netease/mpay/oversea/o4$a;->d:Lcom/netease/mpay/oversea/o4;

    iget-object v1, p1, Lcom/netease/mpay/oversea/o4$a;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/netease/mpay/oversea/o4$a;->b:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/netease/mpay/oversea/o4$a;->c:Lcom/netease/mpay/oversea/g9$a;

    invoke-static {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/o4;->a(Lcom/netease/mpay/oversea/o4;Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/g9$a;)V

    return-void
.end method
