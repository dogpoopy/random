.class Lcom/netease/mpay/oversea/g7$a$a;
.super Ljava/lang/Object;
.source "PNGuestMigrateHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/g7$a;->a(Lcom/netease/mpay/oversea/c9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/g7$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/g7$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/g7$a$a;->a:Lcom/netease/mpay/oversea/g7$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    iget-object p2, p0, Lcom/netease/mpay/oversea/g7$a$a;->a:Lcom/netease/mpay/oversea/g7$a;

    iget-object p2, p2, Lcom/netease/mpay/oversea/g7$a;->a:Lcom/netease/mpay/oversea/g7;

    invoke-static {p2}, Lcom/netease/mpay/oversea/g7;->o(Lcom/netease/mpay/oversea/g7;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    .line 3
    new-instance p1, Lcom/netease/mpay/oversea/y3;

    iget-object p2, p0, Lcom/netease/mpay/oversea/g7$a$a;->a:Lcom/netease/mpay/oversea/g7$a;

    iget-object p2, p2, Lcom/netease/mpay/oversea/g7$a;->a:Lcom/netease/mpay/oversea/g7;

    invoke-static {p2}, Lcom/netease/mpay/oversea/g7;->p(Lcom/netease/mpay/oversea/g7;)Landroid/app/Activity;

    move-result-object p2

    sget-object v0, Lcom/netease/mpay/oversea/g6;->G:Lcom/netease/mpay/oversea/g6;

    sget-object v6, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/g7$a$a$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/g7$a$a$a;-><init>(Lcom/netease/mpay/oversea/g7$a$a;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/y3;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/u5;Lcom/netease/mpay/oversea/q5;)V

    .line 59
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method
