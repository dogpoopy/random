.class Lcom/netease/mpay/oversea/v4$b;
.super Ljava/lang/Object;
.source "LVUAgeGroupView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/v4;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/r0<",
        "Lcom/netease/mpay/oversea/w8$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/v4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/v4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/v4$b;->a:Lcom/netease/mpay/oversea/v4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/w8$a;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p1, Lcom/netease/mpay/oversea/w8$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "child_protection_age_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    const-string v2, "child_protection2"

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/v4$b;->a:Lcom/netease/mpay/oversea/v4;

    invoke-static {v2}, Lcom/netease/mpay/oversea/v4;->s(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/v4$b;->a:Lcom/netease/mpay/oversea/v4;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/v4;->a(Lcom/netease/mpay/oversea/v4;Lcom/netease/mpay/oversea/w8$a;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/w8$a;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/v4$b;->a(Lcom/netease/mpay/oversea/w8$a;)V

    return-void
.end method
