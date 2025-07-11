.class Lcom/netease/mpay/oversea/o4$a$b;
.super Ljava/lang/Object;
.source "InitImpl.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o4$a;->a(ILcom/netease/mpay/oversea/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/mpay/oversea/j;

.field final synthetic c:Lcom/netease/mpay/oversea/o4$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o4$a;ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o4$a$b;->c:Lcom/netease/mpay/oversea/o4$a;

    iput p2, p0, Lcom/netease/mpay/oversea/o4$a$b;->a:I

    iput-object p3, p0, Lcom/netease/mpay/oversea/o4$a$b;->b:Lcom/netease/mpay/oversea/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/o4$a$b;->c:Lcom/netease/mpay/oversea/o4$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/o4$a;->c:Lcom/netease/mpay/oversea/g9$a;

    iget v1, p0, Lcom/netease/mpay/oversea/o4$a$b;->a:I

    const/16 v2, 0x2714

    if-ne v2, v1, :cond_0

    const/16 v1, 0x3e9

    goto :goto_0

    :cond_0
    const/16 v1, 0x3ea

    :goto_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/o4$a$b;->b:Lcom/netease/mpay/oversea/j;

    iget-object v2, v2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/oversea/g9$a;->onFailure(ILjava/lang/String;)V

    return-void
.end method
