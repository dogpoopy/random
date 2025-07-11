.class Lcom/netease/mpay/oversea/cc$c;
.super Ljava/lang/Object;
.source "VerifyEmailFlow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/cc;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/cc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/cc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/cc$c;->a:Lcom/netease/mpay/oversea/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc$c;->a:Lcom/netease/mpay/oversea/cc;

    invoke-static {p1}, Lcom/netease/mpay/oversea/cc;->e(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Lcom/netease/mpay/oversea/s9;->O:Lcom/netease/mpay/oversea/s9;

    iget-object p2, p0, Lcom/netease/mpay/oversea/cc$c;->a:Lcom/netease/mpay/oversea/cc;

    iget-object v0, p2, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-ne p1, v0, :cond_0

    .line 4
    invoke-static {p2}, Lcom/netease/mpay/oversea/cc;->u(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/i$i;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/netease/mpay/oversea/ui/i$i;-><init>(Z)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$c;->a:Lcom/netease/mpay/oversea/cc;

    iget-object v0, v0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 6
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    .line 7
    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p2}, Lcom/netease/mpay/oversea/cc;->v(Lcom/netease/mpay/oversea/cc;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc$c;->a:Lcom/netease/mpay/oversea/cc;

    invoke-static {p1}, Lcom/netease/mpay/oversea/cc;->v(Lcom/netease/mpay/oversea/cc;)V

    :goto_0
    return-void
.end method
