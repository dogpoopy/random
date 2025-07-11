.class Lcom/netease/mpay/oversea/u9$f;
.super Ljava/lang/Object;
.source "SecurityEmailHome.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u9;->e(Lcom/netease/mpay/oversea/w2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/netease/mpay/oversea/u9;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u9;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u9$f;->b:Lcom/netease/mpay/oversea/u9;

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/u9$f;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/u9$f;->a:Z

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/netease/mpay/oversea/ui/p;

    iget-object p2, p0, Lcom/netease/mpay/oversea/u9$f;->b:Lcom/netease/mpay/oversea/u9;

    invoke-static {p2}, Lcom/netease/mpay/oversea/u9;->e(Lcom/netease/mpay/oversea/u9;)Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/mpay/oversea/u9$f;->b:Lcom/netease/mpay/oversea/u9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u9;->f(Lcom/netease/mpay/oversea/u9;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->C:Lcom/netease/mpay/oversea/s9;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    sget-object v2, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    .line 4
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/ui/i;

    iget-object v3, p0, Lcom/netease/mpay/oversea/u9$f;->b:Lcom/netease/mpay/oversea/u9;

    .line 5
    invoke-static {v3}, Lcom/netease/mpay/oversea/u9;->g(Lcom/netease/mpay/oversea/u9;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/p;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    :cond_0
    return-void
.end method
