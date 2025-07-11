.class Lcom/netease/mpay/oversea/sa$e;
.super Ljava/lang/Object;
.source "SwitchView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/r8$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/sa;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/sa;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/sa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/sa$e;->a:Lcom/netease/mpay/oversea/sa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/t8;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa$e;->a:Lcom/netease/mpay/oversea/sa;

    iget v1, p2, Lcom/netease/mpay/oversea/t8;->b:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/sa;->b(Lcom/netease/mpay/oversea/sa;I)I

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa$e;->a:Lcom/netease/mpay/oversea/sa;

    iget-object v1, p2, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/sa;->a(Lcom/netease/mpay/oversea/sa;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa$e;->a:Lcom/netease/mpay/oversea/sa;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/sa;->a(Lcom/netease/mpay/oversea/sa;I)I

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/sa$e;->a:Lcom/netease/mpay/oversea/sa;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/sa;->a(Lcom/netease/mpay/oversea/sa;Lcom/netease/mpay/oversea/t8;)V

    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/t8;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa$e;->a:Lcom/netease/mpay/oversea/sa;

    iget v1, p2, Lcom/netease/mpay/oversea/t8;->b:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/sa;->b(Lcom/netease/mpay/oversea/sa;I)I

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa$e;->a:Lcom/netease/mpay/oversea/sa;

    iget-object v1, p2, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/sa;->a(Lcom/netease/mpay/oversea/sa;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa$e;->a:Lcom/netease/mpay/oversea/sa;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/sa;->a(Lcom/netease/mpay/oversea/sa;I)I

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/sa$e;->a:Lcom/netease/mpay/oversea/sa;

    invoke-static {p1}, Lcom/netease/mpay/oversea/sa;->r(Lcom/netease/mpay/oversea/sa;)I

    move-result p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object p1

    .line 5
    iget-object v0, p2, Lcom/netease/mpay/oversea/t8;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa$e;->a:Lcom/netease/mpay/oversea/sa;

    invoke-static {v0}, Lcom/netease/mpay/oversea/sa;->b(Lcom/netease/mpay/oversea/sa;)Lcom/netease/mpay/oversea/s4;

    move-result-object v0

    new-instance v3, Lcom/netease/mpay/oversea/b6;

    new-instance v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v5, Lcom/netease/mpay/oversea/s9;->w:Lcom/netease/mpay/oversea/s9;

    iget-object p2, p2, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    invoke-direct {v4, v5, p2, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    invoke-direct {v3, v1, p1, v4}, Lcom/netease/mpay/oversea/b6;-><init>(ILcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 9
    invoke-virtual {v3, p1}, Lcom/netease/mpay/oversea/b6;->a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/b6;

    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/s4;->b(Lcom/netease/mpay/oversea/x2;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa$e;->a:Lcom/netease/mpay/oversea/sa;

    invoke-static {v0}, Lcom/netease/mpay/oversea/sa;->c(Lcom/netease/mpay/oversea/sa;)Lcom/netease/mpay/oversea/s4;

    move-result-object v0

    new-instance v3, Lcom/netease/mpay/oversea/b6;

    new-instance v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v5, Lcom/netease/mpay/oversea/s9;->u:Lcom/netease/mpay/oversea/s9;

    iget-object p2, p2, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    invoke-direct {v4, v5, p2, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    invoke-direct {v3, v1, p1, v4}, Lcom/netease/mpay/oversea/b6;-><init>(ILcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    invoke-interface {v0, v3}, Lcom/netease/mpay/oversea/s4;->b(Lcom/netease/mpay/oversea/x2;)V

    :goto_0
    return-void
.end method
