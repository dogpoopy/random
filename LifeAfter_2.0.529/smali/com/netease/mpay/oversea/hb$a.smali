.class Lcom/netease/mpay/oversea/hb$a;
.super Ljava/lang/Object;
.source "UnBindTask.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/q$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/hb;->a(Lcom/netease/mpay/oversea/m1;Lcom/netease/mpay/oversea/ea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/hb;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/hb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/hb$a;->a:Lcom/netease/mpay/oversea/hb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    iget-object v0, p0, Lcom/netease/mpay/oversea/hb$a;->a:Lcom/netease/mpay/oversea/hb;

    invoke-static {v0}, Lcom/netease/mpay/oversea/hb;->b(Lcom/netease/mpay/oversea/hb;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/hb$a;->a:Lcom/netease/mpay/oversea/hb;

    invoke-static {v1}, Lcom/netease/mpay/oversea/hb;->c(Lcom/netease/mpay/oversea/hb;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/hb$a;->a:Lcom/netease/mpay/oversea/hb;

    invoke-static {v0}, Lcom/netease/mpay/oversea/hb;->a(Lcom/netease/mpay/oversea/hb;)Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    return-void
.end method
