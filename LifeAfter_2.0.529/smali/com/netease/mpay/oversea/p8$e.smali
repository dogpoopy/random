.class Lcom/netease/mpay/oversea/p8$e;
.super Ljava/lang/Object;
.source "QuickLogin.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/p8;->a(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/j;

.field final synthetic b:Lcom/netease/mpay/oversea/p8;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/p8;Lcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/p8$e;->b:Lcom/netease/mpay/oversea/p8;

    iput-object p2, p0, Lcom/netease/mpay/oversea/p8$e;->a:Lcom/netease/mpay/oversea/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/p8$e;->a:Lcom/netease/mpay/oversea/j;

    iget v0, v0, Lcom/netease/mpay/oversea/j;->a:I

    const/16 v1, 0x271c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x271d

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/p8$e;->b:Lcom/netease/mpay/oversea/p8;

    invoke-static {v0}, Lcom/netease/mpay/oversea/p8;->e(Lcom/netease/mpay/oversea/p8;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/p8;->a(Lcom/netease/mpay/oversea/p8;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
