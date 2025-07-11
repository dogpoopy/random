.class Lcom/netease/mpay/oversea/b5$j;
.super Ljava/lang/Object;
.source "LVUPersonInfoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b5;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/b5;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b5$j;->a:Lcom/netease/mpay/oversea/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p1

    const-string p2, "child_protection_confirm_cancel"

    const-string v0, "child_protection_confirm"

    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/b5$j;->a:Lcom/netease/mpay/oversea/b5;

    invoke-static {v1}, Lcom/netease/mpay/oversea/b5;->m(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
