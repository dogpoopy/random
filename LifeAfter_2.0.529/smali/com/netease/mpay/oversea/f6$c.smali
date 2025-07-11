.class Lcom/netease/mpay/oversea/f6$c;
.super Ljava/lang/Object;
.source "LoginTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/f6;->b(Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/ea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/f6;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/f6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/f6$c;->a:Lcom/netease/mpay/oversea/f6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/mpay/oversea/f6$c;->a:Lcom/netease/mpay/oversea/f6;

    invoke-static {v2}, Lcom/netease/mpay/oversea/f6;->a(Lcom/netease/mpay/oversea/f6;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "passport_bind"

    const-string v4, "passport_bind_cancel"

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v5, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    iget-object v1, v0, Lcom/netease/mpay/oversea/f6$c;->a:Lcom/netease/mpay/oversea/f6;

    iget-object v2, v1, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-object v6, v2, Lcom/netease/mpay/oversea/u5;->k:Ljava/lang/String;

    iget-object v7, v2, Lcom/netease/mpay/oversea/u5;->b:Ljava/lang/String;

    iget-object v8, v2, Lcom/netease/mpay/oversea/u5;->c:Ljava/lang/String;

    iget-object v9, v2, Lcom/netease/mpay/oversea/u5;->d:Ljava/lang/String;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    iget-object v1, v1, Lcom/netease/mpay/oversea/f6;->n:Lcom/netease/mpay/oversea/s9;

    iget-object v1, v1, Lcom/netease/mpay/oversea/s9;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/s9;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/s9;

    move-result-object v11

    iget-object v1, v0, Lcom/netease/mpay/oversea/f6$c;->a:Lcom/netease/mpay/oversea/f6;

    iget-object v1, v1, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-object v12, v1, Lcom/netease/mpay/oversea/u5;->i:Ljava/util/ArrayList;

    const/4 v10, 0x1

    .line 6
    invoke-static/range {v5 .. v12}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v16

    .line 10
    new-instance v1, Lcom/netease/mpay/oversea/h0;

    iget-object v2, v0, Lcom/netease/mpay/oversea/f6$c;->a:Lcom/netease/mpay/oversea/f6;

    invoke-static {v2}, Lcom/netease/mpay/oversea/f6;->b(Lcom/netease/mpay/oversea/f6;)Landroid/app/Activity;

    move-result-object v14

    iget-object v2, v0, Lcom/netease/mpay/oversea/f6$c;->a:Lcom/netease/mpay/oversea/f6;

    invoke-static {v2}, Lcom/netease/mpay/oversea/f6;->c(Lcom/netease/mpay/oversea/f6;)Ljava/lang/String;

    move-result-object v15

    iget-object v2, v0, Lcom/netease/mpay/oversea/f6$c;->a:Lcom/netease/mpay/oversea/f6;

    iget-object v2, v2, Lcom/netease/mpay/oversea/f6;->l:Lcom/netease/mpay/oversea/q5;

    const/16 v17, 0x1

    move-object v13, v1

    move-object/from16 v18, v2

    invoke-direct/range {v13 .. v18}, Lcom/netease/mpay/oversea/h0;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method
